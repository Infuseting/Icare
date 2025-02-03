from mysql.connector import Error
import re
from datetime import datetime, timedelta
import requests
import asyncio

import mysql.connector

PAUSE_MERIDIENNE_DEBUT = "12:00:00"
PAUSE_MERIDIENNE_FIN = "14:00:00"
LIMIT_HORAIRE_DEBUT = 8
LIMIT_HORAIRE_FIN = 18
    
class Cours: 
    def __init__(self, id, OBG_ID, HEURE_DEBUT, HEURE_FIN, CLA_ID, COU_Libelle, SAL_Libelle, SAL_ID, Prof = [], exist = True):
        self.id = id
        self.OBG_ID = OBG_ID
        self.HORAIRE_DEBUT = HEURE_DEBUT
        self.HORAIRE_FIN = HEURE_FIN
        self.CLA_ID = CLA_ID
        self.COU_Libelle = COU_Libelle
        self.SAL_Libelle = SAL_Libelle
        self.SAL_ID = SAL_ID
        self.Prof = Prof
        
    def __lt__(self, other):
        return self.HORAIRE_DEBUT < other.HORAIRE_DEBUT    
class Classe:
    def __init__(self, CLA_ID, ETU_ID, TYPC_ID, NIV_ID, CLA_Libelle, heritage = []):
        self.id = CLA_ID
        self.ETU_ID = ETU_ID
        self.TYPC_ID = TYPC_ID
        self.NIV_ID = NIV_ID
        self.CLA_Libelle = CLA_Libelle
        self.heritage = heritage
        self.ICal = ICal(id = self.id)
    def getICal(self):
        if hasattr(self, 'ICal'):
            return self.ICal
        self.generateICAL()
        
        return self.getICal()
    def addEvent(self, cours):
        if self.getICal() == None:
            self.generateICAL()
        self.ICal.addEvent(cours)
        for child in self.heritage:
            Classe_list[int(child)].addEvent(cours)
    def __str__(self):
        return f"Classe {self.CLA_Libelle} de niveau {self.NIV_ID}"       
class Salle:
    def __init__(self, id, link, batiment, libelle, type, autorisation):
        self.id = id
        self.link = link
        self.batiment = batiment
        self.libelle = libelle
        self.type = type # Type de salle
        self.autorisation = autorisation # Salle accessible pour X etude.
        
    def getICal(self):
        if hasattr(self, 'ICal'):
            return self.ICal
        self.generateICAL()
        
        return self.getICal()
    def generateICAL(self):
        self.ICal = ICal(self.link, self.id)   
    def __lt__(self, other):
        return self.id < other.id
    def __str__(self):
        return f"Salle {self.libelle} dans le batiment {self.batiment}"  
class Prof:
    def __init__(self, id, responsable):
        self.id = id
        self.link = 'http://127.0.0.1:8000/api/calendar/?id=' + self.id
        self.responsable = responsable
    def getICal(self):
        if hasattr(self, 'ICal'):
            return self.ICal
        self.generateICAL()
        
        return self.getICal()
    def generateICAL(self):
        self.ICal = ICal(self.link, self.id)  
class ICal:
    def __init__(self, filename = None, id = None):
        self.todo_count = 0
        self.event_count = 0
        self.cal = {}
        self._lastKeyWord = None
        self.id = id

        if not filename:
            return

        if filename.startswith('http://') or filename.startswith('https://'):
            response = requests.get(filename)
            lines = response.text.splitlines()
        else:
            with open(filename, 'r') as file:
                lines = file.readlines()

        if 'BEGIN:VCALENDAR' not in lines[0]:
            return

        for line in lines:
            line = line.strip()
            add = self.keyValueFromString(line)
            if add is False:
                self.addCalendarComponentWithKeyAndValue(self._lastKeyWord, False, line)
                continue

            keyword, value = add

            if line == "BEGIN:VTODO":
                self.todo_count += 1
                self._lastKeyWord = "VTODO"
            elif line == "BEGIN:VEVENT":
                self.event_count += 1
                self._lastKeyWord = "VEVENT"
            elif line.startswith("BEGIN:"):
                self._lastKeyWord = value
            elif line.startswith("END:"):
                self._lastKeyWord = "VCALENDAR"
            else:
                self.addCalendarComponentWithKeyAndValue(self._lastKeyWord, keyword, value)

    def addCalendarComponentWithKeyAndValue(self, component, keyword, value):
        if not keyword:
            keyword = self._lastKeyWord
            if component == 'VEVENT':
                value = self.cal[component][self.event_count - 1][keyword] + value
            elif component == 'VTODO':
                value = self.cal[component][self.todo_count - 1][keyword] + value

        if "DTSTART" in keyword or "DTEND" in keyword:
            keyword = keyword.split(";")[0]

        if component == "VTODO":
            self.cal.setdefault(component, []).append({keyword: value})
        elif component == "VEVENT":
            self.cal.setdefault(component, []).append({keyword: value})
        else:
            self.cal.setdefault(component, {})[keyword] = value

        self._lastKeyWord = keyword

    def keyValueFromString(self, text):
        matches = re.match(r"([^:]+):([\w\W]*)", text)
        if not matches:
            return False
        return matches.groups()

    def iCalDateToUnixTimestamp(self, icalDate):
        icalDate = icalDate.replace('T', '').replace('Z', '')
        pattern = r'(\d{4})(\d{2})(\d{2})(\d{0,2})(\d{0,2})(\d{0,2})'
        date = re.match(pattern, icalDate).groups()

        if int(date[0]) <= 1970:
            return False

        return datetime(
            int(date[0]), int(date[1]), int(date[2]),
            int(date[3] or 0), int(date[4] or 0), int(date[5] or 0)
        ).timestamp()

    def events(self):
        return self.cal.get('VEVENT', [])

    def hasEvents(self):
        return len(self.events()) > 0

    def eventsFromRange(self, rangeStart=False, rangeEnd=False):
        events = self.sortEventsWithOrder(self.events(), 'asc')

        if not events:
            return False

        if not rangeStart:
            rangeStart = datetime.now()

        if not rangeEnd or rangeEnd <= datetime(1970, 1, 1):
            rangeEnd = datetime(2038, 1, 18)

        rangeStart = rangeStart.timestamp()
        rangeEnd = rangeEnd.timestamp()

        for event in events:
            event_start = self.iCalDateToUnixTimestamp(event['DTSTART'])
            event_end = self.iCalDateToUnixTimestamp(event['DTEND'])
            if event_start < rangeEnd and event_end > rangeStart:
                return True

        return False

    def sortEventsWithOrder(self, events, sortOrder='asc'):
        extendedEvents = []

        for event in events:
            if 'DTSTART' in event:
                if 'UNIX_TIMESTAMP' not in event:
                    event['UNIX_TIMESTAMP'] = self.iCalDateToUnixTimestamp(event['DTSTART'])
                if 'REAL_DATETIME' not in event:
                    event['REAL_DATETIME'] = datetime.fromtimestamp(event['UNIX_TIMESTAMP']).strftime('%d.%m.%Y')
                extendedEvents.append(event)

        return sorted(extendedEvents, key=lambda x: x['UNIX_TIMESTAMP'], reverse=(sortOrder == 'desc'))

    def addEvent(self, cours : Cours):
        
        event = {
            'UID': cours.id,
            'DTSTAMP': datetime.now().strftime('%Y%m%dT%H%M%SZ'),
            'DESCRIPTION': f"Salle : {cours.SAL_Libelle}\\n\\n" + (f"Professeur : {', '.join([Prof_list[prof_id].id for prof_id in cours.Prof])}" if len(cours.Prof) > 0 else ""),
            'DTSTART' : cours.HORAIRE_DEBUT.strftime('%Y%m%dT%H%M%SZ'),
            'DTEND' : cours.HORAIRE_FIN.strftime('%Y%m%dT%H%M%SZ'),
            'SUMMARY': cours.COU_Libelle,
            'LOCATION': cours.SAL_Libelle,
            'CLA_ID' : cours.CLA_ID
        }
        self.cal.setdefault('VEVENT', []).append(event)
        self.event_count += 1
        
    def extractToICS(self, filename):
        with open(filename, 'w') as file:
            file.write("BEGIN:VCALENDAR\n")
            for event in self.events():
                file.write("BEGIN:VEVENT\n")
                for key, value in event.items():
                    file.write(f"{key}:{value}\n")
                file.write("END:VEVENT\n")
            file.write("END:VCALENDAR\n")
            
    def getMinutesOfEventsInDay(self, day):
        total_minutes = 0
        for event in self.events():
            if 'DTSTART' in event and 'DTEND' in event and event['DTSTART'] != None and event['DTEND'] != None:
                
                event_start = datetime.strptime(event['DTSTART'], '%Y%m%dT%H%M%SZ')
                event_end = datetime.strptime(event['DTEND'], '%Y%m%dT%H%M%SZ')
                if event_start.date() == day.date():
                    event_duration = (event_end - event_start).total_seconds() / 60
                    total_minutes += event_duration
        return total_minutes
    def getListOfCoursInDay(self, day):
        cours = []
        for event in self.events():
            if 'DTSTART' in event and 'DTEND' in event and event['DTSTART'] != None and event['DTEND'] != None:
                event_start = datetime.strptime(event['DTSTART'], '%Y%m%dT%H%M%SZ')
                event_end = datetime.strptime(event['DTEND'], '%Y%m%dT%H%M%SZ')
                if event_start.date() == day.date():
                    cours.append((event_start, event_end))
        return cours
    def getNextDisponibility(self, start_date, duree, moy_hour, day=7):
        disponibilities = []
        current_date = datetime.strptime(start_date.strftime('%Y-%m-%d'), '%Y-%m-%d')
        end_date = current_date + timedelta(days=day)
        
        while current_date <= end_date:
            
            if self.getMinutesOfEventsInDay(current_date) < moy_hour * 60:
                start_time = datetime.combine(current_date, datetime.min.time()).replace(hour=LIMIT_HORAIRE_DEBUT)
                end_time = datetime.combine(current_date, datetime.min.time()).replace(hour=LIMIT_HORAIRE_FIN)
                
                pause_start = datetime.combine(current_date, datetime.strptime(PAUSE_MERIDIENNE_DEBUT, '%H:%M:%S').time())
                pause_end = datetime.combine(current_date, datetime.strptime(PAUSE_MERIDIENNE_FIN, '%H:%M:%S').time())
                current_time = start_time
                while current_time + timedelta(minutes=duree) <= end_time:
                    if not (pause_start <= current_time < pause_end or pause_start < current_time + timedelta(minutes=duree) <= pause_end):
                        event_start = current_time
                        event_end = current_time + timedelta(minutes=duree)
                        if self.getMinutesOfEventsInDay(current_date) + duree <= moy_hour * 60:
                            if not self.eventsFromRange(event_start, event_end):
                                disponibilities.append((event_start, event_end, self.id))
                    current_time += timedelta(minutes=60)
                
            current_date += timedelta(days=1)
        return disponibilities

def generate_id(dict) :
    id = 0
    while id in dict :
        id += 1
    return id

def create_connection(host_name, user_name, user_password, db_name):
    connection = None
    try:
        connection = mysql.connector.connect(
            host=host_name,
            user=user_name,
            passwd=user_password,
            database=db_name
        )
        print("Connection to MySQL DB successful")
        
    except Error as e:
        print(f"The error '{e}' occurred")

    return connection

def isSalleAvailable(salle, HORAIRE_DEBUT, HORAIRE_FIN):
    if salle.getIcal() == None:
        salle.generateICAL()
    salleCal = salle.getICal()
    return salleCal.eventsFromRange(HORAIRE_DEBUT, HORAIRE_FIN)
    

def isProfAvailable(prof, HORAIRE_DEBUT, HORAIRE_FIN):
    if prof.getIcal() == None:
        prof.generateICAL()
    profCal = prof.getICal()
    return profCal.eventsFromRange(HORAIRE_DEBUT, HORAIRE_FIN)


Salle_list = {}
Prof_list = {}
Batiment_Distance = {}
Classe_list = {}
Cours_List = {}
Etude_Salle_Utilisable = {}
connection = create_connection("127.0.0.1", "root", "root", "icare")


GET_SALLE = "SELECT  s.SAL_ID,  s.SAL_Libelle,  s.BAT_ID,  s.SAL_Link,  GROUP_CONCAT(DISTINCT e.TYP_ID) AS LIST_TYP_ID,  GROUP_CONCAT(DISTINCT a.ETU_ID) AS LIST_ETU_ID FROM ICA_Salle s LEFT JOIN ICA_EST_TYPE e USING (SAL_ID) LEFT JOIN ICA_Autorise a USING (SAL_ID) GROUP BY s.SAL_ID, s.SAL_Libelle, s.BAT_ID, s.SAL_Link; "
cursor = connection.cursor()
cursor.execute(GET_SALLE)
salles = cursor.fetchall()
for salle in salles:
    
    type = salle[4].split(',') if salle[4] else []
    etu = salle[5].split(',') if salle[5] else []
    item_salle = Salle(salle[0], salle[3], salle[2], salle[1], type, etu)
    Salle_list[item_salle.id] = item_salle
    for etude in etu:
        if etude not in Etude_Salle_Utilisable:
            Etude_Salle_Utilisable[etude] = []
        Etude_Salle_Utilisable[etude].append(item_salle.id)

GET_PROF = "SELECT  p.USE_UUID, GROUP_CONCAT(DISTINCT r.MAT_ID) AS Responsable_List FROM ICA_Prof p LEFT JOIN ICA_Responsable r USING (USE_UUID) GROUP BY p.USE_UUID;"
cursor.execute(GET_PROF)
profs = cursor.fetchall()
for prof in profs:
    type = prof[1].split(',') if prof[1] else []
    item_prof = Prof(prof[0], type)
    Prof_list[item_prof.id] = Prof(prof[0], type)
    

GET_DISTANCE = "SELECT BAT_ID1, BAT_ID2, DIS_TEMPS FROM ICA_Batiment JOIN ICA_Distance ON BAT_ID = BAT_ID1;"
cursor.execute(GET_DISTANCE)
distances = cursor.fetchall()
for distance in distances:
    if distance[0] not in Batiment_Distance:
        Batiment_Distance[distance[0]] = {}
    Batiment_Distance[distance[0]][distance[1]] = distance[2] 

GET_CLASSE = """WITH RECURSIVE DescendanceTree AS (
    -- Cas de base : récupérer les enfants directs
    SELECT 
        h.ANCETRE_CLA_ID AS Parent_ID, 
        h.CLA_ID AS Child_ID
    FROM ICA_HERITE h

    UNION ALL

    -- Cas récursif : récupérer les enfants des enfants
    SELECT 
        dt.Parent_ID, 
        h.CLA_ID AS Child_ID
    FROM ICA_HERITE h
    INNER JOIN DescendanceTree dt ON h.ANCETRE_CLA_ID = dt.Child_ID
)

SELECT 
    c.CLA_ID AS Parent_ID, 
    c.ETU_ID, 
    c.TYPC_ID, 
    c.NIV_ID, 
    c.CLA_Libelle, 
    GROUP_CONCAT(DISTINCT dt.Child_ID ORDER BY dt.Child_ID ASC) AS Children_List
FROM ICA_Classe c
LEFT JOIN DescendanceTree dt ON c.CLA_ID = dt.Parent_ID
GROUP BY c.CLA_ID, c.ETU_ID, c.TYPC_ID, c.NIV_ID, c.CLA_Libelle;

"""
cursor.execute(GET_CLASSE)
classe = cursor.fetchall()
for cl in classe:
    heritage = cl[5].split(',') if cl[5] else []
    item_classe = Classe(cl[0], cl[1], cl[2], cl[3], cl[4], heritage)
    Classe_list[item_classe.id] = item_classe

GET_COURS = """SELECT 
    c.COU_ID, 
    c.OBG_ID, 
    c.COU_HEURE_DEBUT, 
    c.COU_HEURE_FIN, 
    c.CLA_ID, 
    c.COU_Libelle, 
    s.SAL_Libelle, 
    s.SAL_ID, 
    GROUP_CONCAT(DISTINCT g.USE_UUID ORDER BY g.USE_UUID ASC) AS Users_List
FROM ICA_Cours c
LEFT JOIN ICA_Salle s USING(SAL_ID)
LEFT JOIN ICA_GERER g USING(COU_ID)
GROUP BY c.COU_ID, c.OBG_ID, c.COU_HEURE_DEBUT, c.COU_HEURE_FIN, c.CLA_ID, c.COU_Libelle, s.SAL_Libelle, s.SAL_ID;
"""
cursor.execute(GET_COURS)
cours = cursor.fetchall()
for cour in cours:
    prof = cour[8].split(',') if cour[8] else []
    item_cours = Cours(cour[0], cour[1], cour[2], cour[3], cour[4], cour[5], cour[6], cour[7], prof)
    Cours_List[item_cours.id] = item_cours
    if item_cours.SAL_ID != None:
        if not isSalleAvailable(Salle_list[item_cours.SAL_ID], item_cours.HORAIRE_DEBUT, item_cours.HORAIRE_FIN):
            raise Exception(f"Salle {item_cours.SAL_Libelle} is not available from {item_cours.HORAIRE_DEBUT} to {item_cours.HORAIRE_FIN}")
    for prof in item_cours.Prof:
        if not isProfAvailable(Prof_list[prof], item_cours.HORAIRE_DEBUT, item_cours.HORAIRE_FIN):
            raise Exception(f"Prof {Prof_list[prof].id} is not available from {item_cours.HORAIRE_DEBUT} to {item_cours.HORAIRE_FIN}")
    for prof in item_cours.Prof:
        assert(isProfAvailable(Prof_list[prof], item_cours.HORAIRE_DEBUT, item_cours.HORAIRE_FIN))
    Classe_list[item_cours.CLA_ID].addEvent(item_cours)

    

id_obg = [] 
GET_OBG_COURS = f"""
WITH RECURSIVE Palier AS (
    -- Étape 1 : Sélectionner les cours de base (qui n'ont pas de prérequis) -> Niveau 0
    SELECT 
        o.OBG_ID,
        o.MAT_ID,
        o.ETU_ID,
        o.SEM_ID,
        o.OBG_Libelle,
        o.TYPC_ID,
        o.DATE_DEBUT,
        o.DATE_FIN,
        o.DUREE,
        0 AS Stage  -- Niveau de départ
    FROM ICA_Obligation_Cours o
    LEFT JOIN ICA_AVANT k ON o.OBG_ID = k.OBG_ID2
    WHERE k.OBG_ID2 IS NULL  -- Cours sans prérequis

    UNION ALL

    -- Étape 2 : Ajouter les cours avancés qui en dépendent
    SELECT 
        o.OBG_ID,
        o.MAT_ID,
        o.ETU_ID,
        o.SEM_ID,
        o.OBG_Libelle,
        o.TYPC_ID,
        o.DATE_DEBUT,
        o.DATE_FIN,
        o.DUREE,
        p.Stage + 1 AS Stage  -- Incrémentation pour les cours avancés
    FROM Palier p
    INNER JOIN ICA_AVANT k ON p.OBG_ID = k.OBG_ID1  -- Trouver les cours avancés liés
    INNER JOIN ICA_Obligation_Cours o ON o.OBG_ID = k.OBG_ID2  -- Associer les cours avancés
)

-- Étape 3 : Sélectionner uniquement le plus grand stage pour chaque OBG_ID
SELECT 
    p1.OBG_ID,
    p1.MAT_ID,
    p1.ETU_ID,
    p1.SEM_ID,
    p1.OBG_Libelle,
    p1.TYPC_ID,
    p1.DATE_DEBUT,
    p1.DATE_FIN,
    p1.DUREE,
    p1.Stage,
    COALESCE(
        GROUP_CONCAT(DISTINCT a.ICA_Prof_USE_UUID ORDER BY a.ICA_Prof_USE_UUID ASC), 
        GROUP_CONCAT(DISTINCT r.USE_UUID ORDER BY r.USE_UUID ASC)
    ) AS Users_List,
    GROUP_CONCAT(DISTINCT n.TYP_ID ORDER BY n.TYP_ID ASC) AS Salle_Types  -- Ajout des types de salle nécessaires
FROM Palier p1
LEFT JOIN ICA_Apprends a ON p1.OBG_ID = a.ICA_Obligation_Cours_OBG_ID
LEFT JOIN ICA_Responsable r USING(MAT_ID)
LEFT JOIN ICA_Necessite_Salle n USING(OBG_ID)  -- Jointure avec la table des types de salle nécessaires
INNER JOIN (
    SELECT OBG_ID, MAX(Stage) AS Max_Stage
    FROM Palier
    GROUP BY OBG_ID
) p2 ON p1.OBG_ID = p2.OBG_ID AND p1.Stage = p2.Max_Stage
GROUP BY 
    p1.OBG_ID, p1.MAT_ID, p1.ETU_ID, p1.SEM_ID, p1.OBG_Libelle, 
    p1.TYPC_ID, p1.DATE_DEBUT, p1.DATE_FIN, p1.DUREE, p1.Stage
ORDER BY Stage ASC, DATE_FIN, OBG_ID;

"""
cursor.execute(GET_OBG_COURS)
obg_cours = cursor.fetchall()
stage = -1
for obg_cour in obg_cours:    
    MOY_HOUR_PER_DAY = f"""
                            WITH Date_Time AS (
                                SELECT 
                                    SUM(
                                        CASE
                                            WHEN COU_HEURE_FIN <= "{obg_cour[7]}" AND COU_HEURE_DEBUT >= "{obg_cour[6]}" THEN 
                                                GREATEST(((DATEDIFF(COU_HEURE_FIN, COU_HEURE_DEBUT) * {LIMIT_HORAIRE_FIN} - {LIMIT_HORAIRE_DEBUT}) * 60), 0)
                                            
                                            WHEN COU_HEURE_DEBUT <= "{obg_cour[7]}" AND COU_HEURE_DEBUT >= "{obg_cour[6]}" THEN 
                                                GREATEST(((DATEDIFF("{obg_cour[7]}", COU_HEURE_DEBUT) * {LIMIT_HORAIRE_FIN} - {LIMIT_HORAIRE_DEBUT}) * 60), 0)
                                                
                                            WHEN COU_HEURE_DEBUT <= "{obg_cour[7]}" AND COU_HEURE_DEBUT <= "{obg_cour[6]}" THEN 
                                                GREATEST(((DATEDIFF(COU_HEURE_DEBUT, "{obg_cour[6]}") * {LIMIT_HORAIRE_FIN} - {LIMIT_HORAIRE_DEBUT}) * 60), 0)
                                            
                                            ELSE 0
                                        END
                                    ) AS Total_Vacation_Minutes
                                FROM ICA_Cours p
                                WHERE COU_Libelle LIKE "%(VACANCE)%"
                            )
                            SELECT 
                                AVG(CEIL(((DATEDIFF(DATE_FIN, DATE_DEBUT) * {LIMIT_HORAIRE_FIN} - {LIMIT_HORAIRE_DEBUT}) * 60) / Date_Time.Total_Vacation_Minutes)) AS Moy_Hours
                            FROM ICA_Obligation_Cours
                            CROSS JOIN Date_Time;
                """ 
    cursor.execute(MOY_HOUR_PER_DAY)
    moy_hour_per_day = cursor.fetchall()[0][0]
    GET_HAS_COURS = f"""
        SELECT * FROM HAS_COURS
        WHERE OBG_ID = {obg_cour[0]}
    """
    cursor.execute(GET_HAS_COURS)
    has_cours = cursor.fetchall()
    for has_cour in has_cours:
        if has_cour[3] != 'V':
            COU_ID = generate_id(Cours_List)
            OBG_ID = obg_cour[0]
            DATE_DEBUT = obg_cour[6]
            DATE_FIN = obg_cour[7]
            CLA_ID = has_cour[1]
            PROF_ID = None
            for i in obg_cour[10].split(','):
                if i in Prof_list:
                    PROF_ID = i
                    PROF = Prof_list[PROF_ID]
                    ICAL_PROF = PROF.getICal()
                    day = 1
                    SALLE = [Salle_list[salle] for salle in (obg_cour[11].split(',') if obg_cour[11] else Etude_Salle_Utilisable[str(obg_cour[2])])]
                    disponibility = []
                    while len(disponibility) == 0:
                        Prof_Disponibility = ICAL_PROF.getNextDisponibility(DATE_DEBUT,obg_cour[8], moy_hour_per_day, day)
                        Salle_Disponibility = [salle.getICal().getNextDisponibility(DATE_DEBUT, obg_cour[8], moy_hour_per_day, day) for salle in SALLE]
                        Class_Disponibility = Classe_list[CLA_ID].getICal().getNextDisponibility(DATE_DEBUT, obg_cour[8], moy_hour_per_day, day)
                        for prof_slot in Prof_Disponibility:
                            for class_slot in Class_Disponibility:
                                for salle in Salle_Disponibility:
                                    for salle_slot in salle:
                                        start_time = max(prof_slot[0], salle_slot[0], class_slot[0])
                                        end_time = min(prof_slot[1], salle_slot[1], class_slot[1])
                                        if end_time - start_time >= timedelta(minutes=obg_cour[8]):
                                            disponibility.append((start_time, end_time, CLA_ID, salle_slot[2], PROF_ID))
                                            break
                        day+=1
                    print(f"{obg_cour[5]}")
                    print(f"Professeur {PROF_ID} est disponible pour le cours {COU_ID} de {disponibility[0][0]} à {disponibility[0][1]}")
                    print(f"La classe {CLA_ID} est disponible pour le cours {COU_ID} de {disponibility[0][0]} à {disponibility[0][1]}")
                    print(f"La salle {disponibility[0][3]} est disponible pour le cours {COU_ID} de {disponibility[0][0]} à {disponibility[0][1]}")
                    item_cours = Cours(COU_ID, OBG_ID, disponibility[0][0], disponibility[0][1], CLA_ID, obg_cour[4], Salle_list[disponibility[0][3]].libelle, disponibility[0][3], [PROF_ID])
                    Cours_List[item_cours.id] = item_cours
                    Classe_list[CLA_ID].addEvent(item_cours)
                    Salle_list[disponibility[0][3]].getICal().addEvent(item_cours)
                    Prof_list[PROF_ID].getICal().addEvent(item_cours)
            
            
            
            
            
                    


for i in Classe_list:
    Classe_list[i].getICal().extractToICS(f"Classe_{i}.ics")

for i in Salle_list:
    Salle_list[i].getICal().extractToICS(f"Salle_{i}.ics")

for i in Prof_list:
    Prof_list[i].getICal().extractToICS(f"Prof_{i}.ics")
    

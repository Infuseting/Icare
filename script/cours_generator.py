from datetime import datetime, timedelta
import json
import uuid


id_cours_dic = {
    "Undefined": -1,
    "R1.01": 2,
    "R1.02": 3,
    "R1.03": 4,
    "R1.04": 5,
    "R1.05": 6,
    "R1.06": 7,
    "R1.07": 8,
    "R1.08": 9,
    "R1.09": 10,
    "R1.10": 11,
    "R1.11": 12,
    "R1.12": 13,
    "SAE1.01": 14,
    "SAE1.02": 15,
    "SAE1.03": 16,
    "SAE1.04": 17,
    "SAE1.05": 18,
    "SAE1.06": 19,
}

type_cours_dic = {
    "Autre" : -1, 
    "CM" : 1,
    "TD" : 2,
    "TP" : 3,
    "CTP" : 3,
    "CC" : 1
} 

class Cours:
    id_counter = 1

    def __init__(self, date: datetime, duree: timedelta, nom_matiere: str, type_cours: str, location: str, id_cours : int, apres : list = []):
        self.id = Cours.id_counter
        Cours.id_counter += 1
        self.date = date
        self.duree = duree
        self.nom_matiere = nom_matiere
        self.type_cours = type_cours
        self.location = location
        self.id_cours = id_cours
        self.apres = apres
        

    def __str__(self):
        return f"Cours ID: {self.id} - {self.nom_matiere} ({self.type_cours}) ({self.id_cours}) le {self.date.strftime('%Y-%m-%d %H:%M:%S')} pour une durée de {self.duree} dans la salle {self.location}"
    def addApres(self, id):
        self.apres.append(id)
    def getId(self):
        return self.id
    def __lt__(self, other):
        return self.date < other.date

with open('Année_S1_Informatique.json', 'r+') as file:
    data = json.load(file)

list_cours = {}
for day in data:
    for cours_data in data[day]['content']:
        date = datetime.strptime(cours_data['DTSTART'], '%Y%m%dT%H%M%S')
        dtend = datetime.strptime(cours_data['DTEND'], '%Y%m%dT%H%M%S')
        duree = dtend - date
        nom_matiere = ' '.join(cours_data['SUMMARY'].split()[:-1])
        id_cours = next((id_cours_dic[key] for key in id_cours_dic if key in cours_data['SUMMARY']), -1)
        type_cours = 'Autre'
        for tc in ['CTP', 'CC', 'TD', 'TP', 'CM']:
            if tc in cours_data['SUMMARY'].split()[-1]:
                type_cours = tc
                break
        location = cours_data['LOCATION']
        if id_cours not in list_cours:
            list_cours[id_cours] = {}
        if type_cours not in list_cours[id_cours]:
            list_cours[id_cours][type_cours] = []
        avant = []
        if (type_cours is 'CTP'):
            if 'TP' in list_cours[id_cours] and len(list_cours[id_cours]['TP']) > 0:
                avant.append(list_cours[id_cours]['TP'][-1].getId())
            if 'CM' in list_cours[id_cours] and len(list_cours[id_cours]['CM']) > 0:
                avant.append(list_cours[id_cours]['CM'][-1].getId())
        if (type_cours is 'CC'):
            if 'TD' in list_cours[id_cours] and len(list_cours[id_cours]['TD']) > 0:
                avant.append(list_cours[id_cours]['TD'][-1].getId())
            if 'CM' in list_cours[id_cours] and len(list_cours[id_cours]['CM']) > 0:
                avant.append(list_cours[id_cours]['CM'][-1].getId())
        if (type_cours is 'CM'):
            if 'CM' in list_cours[id_cours] and len(list_cours[id_cours]['CM']) > 0:
                avant.append(list_cours[id_cours]['CM'][-1].getId())
                
        if (type_cours is 'TD'):
            if 'CM' in list_cours[id_cours] and len(list_cours[id_cours]['CM']) > 0:
                avant.append(list_cours[id_cours]['CM'][-1].getId())
            if 'TD' in list_cours[id_cours] and len(list_cours[id_cours]['TD']) > 0:
                avant.append(list_cours[id_cours]['TD'][-1].getId())
        if (type_cours is 'TP'):
            if 'TD' in list_cours[id_cours] and len(list_cours[id_cours]['TD']) > 0:
                avant.append(list_cours[id_cours]['TD'][-1].getId())
            if 'TP' in list_cours[id_cours] and len(list_cours[id_cours]['TP']) > 0:
                avant.append(list_cours[id_cours]['TP'][-1].getId())
        cours = Cours(date, duree, nom_matiere, type_cours, location, id_cours, avant)
        list_cours[id_cours][type_cours].append(cours)

with open('insert.sql', 'w+') as f:
    for id_cours in list_cours:
        nom_cours = next((key for key, value in id_cours_dic.items() if value == id_cours), None)
        f.write(f'#{nom_cours}#\n\n')
        for type_cours in list_cours[id_cours]:
            f.write(f'#{type_cours}#\n\n')
            for cours in list_cours[id_cours][type_cours]:
                duree_minutes = cours.duree.total_seconds() / 60
                position = list_cours[id_cours][type_cours].index(cours) + 1
                f.write(f"INSERT INTO ICA_Obligation_Cours(OBG_ID, MAT_ID, ETU_ID, SEM_ID, OBG_Libelle, TYPC_ID, DATE_DEBUT, DATE_FIN, DUREE) VALUES({cours.getId()}, {id_cours}, 2, 2, '{type_cours} {position}', {type_cours_dic[cours.type_cours]}, '2024-09-02', '2025-01-16', {duree_minutes}); #{cours.location} | {cours.nom_matiere}#\n")
                for i in cours.apres:
                    f.write(f"INSERT INTO ICA_Avant(OBG_ID1, OBG_ID2) VALUES ({i}, {cours.getId()});\n")
    f.close()
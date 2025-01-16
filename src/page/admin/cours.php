<?php
$conn = getConn();
if (!isset($conn)) {
    echo 'Error While loading (You can\' access to this page !)';
    exit();
}

if (!(hasAdminPermission(11)))  {
    Header('Location: /error/401');
    exit();
}
?>
<div class="flex flex-col justify-start m-10">
    <h1 class="pl-5 text-4xl font-semibold text-gray-900 text-start">Cours</h1>
    <p class="pl-5 text-lg text-gray-500 dark:text-gray-400 text-start ">Manage Cours.</p>
    <hr class="w-full my-10 border-gray-200 dark:border-gray-700">

    <div class="relative max-w-full m-10">
        <div class="flex items-center justify-between flex-column flex-wrap md:flex-row space-y-4 md:space-y-0 pb-4 bg-white">

            <label for="table-search" class="sr-only">Search</label>
            <div class="relative">
                <div class="absolute inset-y-0 rtl:inset-r-0 start-0 flex items-center ps-3 pointer-events-none">
                    <svg class="w-4 h-4 text-gray-500 dark:text-gray-400" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 20 20">
                        <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m19 19-4-4m0-7A7 7 0 1 1 1 8a7 7 0 0 1 14 0Z"/>
                    </svg>
                </div>
                <input  type="text" id="table-search-users" class="block p-2 ps-10 text-sm text-gray-900 border border-gray-300 rounded-lg w-80 bg-gray-50 focus:ring-blue-500 focus:border-blue-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" placeholder="Search for users">
            </div>
            <div class="relative">
                <button onclick="openModalCours()" id="table-button-adder" class="block p-2 text-sm text-green-900 border border-gray-300 rounded-lg w-80 bg-green-500 focus:ring-green-500 focus:border-green-500 ">
                    + Add New Prof
                </button>
            </div>
        </div>
        <table id="User-Table" class="w-full text-sm text-left rounded-lg rtl:text-right text-gray-500 dark:text-gray-400">
            <thead class="text-xs text-gray-700 uppercase bg-gray-50 dark:bg-gray-700 dark:text-gray-400">
            <tr class="table-header">
                <th scope="col" class="px-6 py-3">
                    Matiere
                </th>
                <th scope="col" class="px-6 py-3">
                    Libelle
                </th>
                <th scope="col" class="px-6 py-3">
                    Genre
                </th>
                <th scope="col" class="px-6 py-3">
                    Responsable
                </th>
                <th scope="col" class="px-6 py-3">
                    Date Minimal
                </th>
                <th scope="col" class="px-6 py-3">
                    Date Maximal
                </th>
                <th class="col" class="px-6 py-3">
                    Salle Necessaire
                </th>
                <th class="col" class="px-6 py-3">
                    Après X cours
                </th>
                <th scope="col" class="px-6 py-3">
                    Action
                </th>

            </tr>
            </thead>
            <tbody>
                <?php
                    $SQL = "SELECT * FROM ICA_Obligation_Cours JOIN ICA_Type_Classe USING(TYPC_ID) JOIN ICA_FORMAT USING (MAT_ID, ETU_ID, SEM_ID) JOIN ICA_Matiere USING (MAT_ID) JOIN ICA_Etude USING (ETU_ID) JOIN ICA_Temporalite USING (SEM_ID)";
                    $result = $conn->query($SQL);
                    while ($row = $result->fetch_assoc()) {
                        echo '<tr class="bg-white border-b dark:bg-gray-800 dark:border-gray-700 hover:bg-gray-50 dark:hover:bg-gray-600 '. (isset($row['USERNAME']) ? 'SR-USERNAME-'. $row['USERNAME'] : '') .' '. (isset($row['EMAIL']) ? 'SR-EMAIL-' . $row['EMAIL'] : '') .' SR-UUID-'. $row['USE_UUID'].'">

                        <th scope="row" class="w-1/3 flex items-center px-6 py-4 text-gray-900 whitespace-nowrap dark:text-white">';
                        $color = substr(md5($row['MAT_ID']. '-'. $row['ETU_ID']. '-' . $row['SEM_ID']), 0, 6);
                        echo '<img class="w-10 h-10 rounded-full" src="https://singlecolorimage.com/get/'.$color.'/32x32" alt="Couleur matière">';
                        echo '<div class="ps-3">';
                        echo '<div class="text-base font-semibold">' . $row['MAT_Libelle'] . '</div>';
                        echo '<div class="font-normal text-gray-500">' . $row['SEM_Libelle'] . ' - '. $row['ETU_Libelle'] .'</div>';
                        echo '</div>';
                        echo '</th>';
                        echo '<td class="px-6 py-4 w-1/3">';
                        echo $row['OBG_Libelle'];
                        echo '</td>';
                        echo '<td class="px-6 py-4 w-1/3">';
                        echo $row['TYPC_Libelle'];
                        echo '</td>';
                        echo '<td class="px-6 py-4 w-1/3">';
                        
                        echo '</td>';
                        echo '</tr>';
                    }
                ?>
            </tbody>
        </table>
        <div id="hs-modal-add" class="hs-overlay hidden size-full fixed top-0 start-0 z-[80] overflow-x-hidden overflow-y-auto pointer-events-none" role="dialog" tabindex="-1" aria-labelledby="hs-vertically-centered-scrollable-modal-label">
            <div class="hs-overlay-open:mt-7 hs-overlay-open:opacity-100 hs-overlay-open:duration-500 mt-0 opacity-0 ease-out transition-all sm:max-w-lg sm:w-full m-3 sm:mx-auto h-[calc(100%-3.5rem)] min-h-[calc(100%-3.5rem)] flex items-center">
                <div class="w-full overflow-hidden flex flex-col bg-white border shadow-sm rounded-xl pointer-events-auto dark:bg-neutral-800 dark:border-neutral-700 dark:shadow-neutral-700/70">
                    <div class="flex justify-between items-center py-3 px-4 border-b dark:border-neutral-700">
                        <h3 id="hs-vertically-centered-scrollable-modal-label" class="font-bold text-gray-800 dark:text-white">
                            Add new teacher
                        </h3>
                        <button type="button" class="size-8 inline-flex justify-center items-center gap-x-2 rounded-full border border-transparent bg-gray-100 text-gray-800 hover:bg-gray-200 focus:outline-none focus:bg-gray-200 disabled:opacity-50 disabled:pointer-events-none dark:bg-neutral-700 dark:hover:bg-neutral-600 dark:text-neutral-400 dark:focus:bg-neutral-600" aria-label="Close" data-hs-overlay="#hs-vertically-centered-scrollable-modal">
                            <span class="sr-only">Close</span>
                            <svg class="shrink-0 size-4" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                <path d="M18 6 6 18"></path>
                                <path d="m6 6 12 12"></path>
                            </svg>
                        </button>
                    </div>
                    <div class="p-4 overflow-y-auto">
                        <div class="mb-4">
                            <select id="utilisateurs-select" data-hs-select='{
  "placeholder": "Selection utilisateurs",
  "toggleTag": "<button type=\"button\" aria-expanded=\"false\"><span class=\"me-2\" data-icon></span><span class=\"text-gray-800 dark:text-neutral-200 \" data-title></span></button>",
  "toggleClasses": "hs-select-disabled:pointer-events-none hs-select-disabled:opacity-50 relative py-3 ps-4 pe-9 flex gap-x-2 text-nowrap w-full cursor-pointer bg-white border border-gray-200 rounded-lg text-start text-sm focus:outline-none focus:ring-2 focus:ring-blue-500 dark:bg-neutral-900 dark:border-neutral-700 dark:text-neutral-400 dark:focus:outline-none dark:focus:ring-1 dark:focus:ring-neutral-600",
  "dropdownScope": "window",
  "dropdownClasses": "users-select mt-2 max-h-72 p-1 space-y-0.5 z-[80] w-full bg-white border border-gray-200 rounded-lg overflow-hidden overflow-y-auto [&::-webkit-scrollbar]:w-2 [&::-webkit-scrollbar-thumb]:rounded-full [&::-webkit-scrollbar-track]:bg-gray-100 [&::-webkit-scrollbar-thumb]:bg-gray-300 dark:[&::-webkit-scrollbar-track]:bg-neutral-700 dark:[&::-webkit-scrollbar-thumb]:bg-neutral-500 dark:bg-neutral-900 dark:border-neutral-700",
  "optionClasses": "py-2 px-3 w-full text-sm text-gray-800 cursor-pointer hover:bg-gray-100 rounded-lg focus:outline-none focus:bg-gray-100 dark:bg-neutral-900 dark:hover:bg-neutral-800 dark:text-neutral-200 dark:focus:bg-neutral-800",
  "optionTemplate": "<div class=\"flex items-center\"><div class=\"me-2\" data-icon></div><div><div class=\"hs-selected:font-semibold text-sm text-gray-800 dark:text-neutral-200 \" data-title></div></div><div class=\"ms-auto\"><span class=\"hidden hs-selected:block\"><svg class=\"shrink-0 size-4 text-blue-600\" xmlns=\"http://www.w3.org/2000/svg\" width=\"16\" height=\"16\" fill=\"currentColor\" viewBox=\"0 0 16 16\"><path d=\"M12.736 3.97a.733.733 0 0 1 1.047 0c.286.289.29.756.01 1.05L7.88 12.01a.733.733 0 0 1-1.065.02L3.217 8.384a.757.757 0 0 1 0-1.06.733.733 0 0 1 1.047 0l3.052 3.093 5.4-6.425a.247.247 0 0 1 .02-.022Z\"/></svg></span></div></div>",
  "extraMarkup": "<div class=\"absolute top-1/2 end-3 -translate-y-1/2\"><svg class=\"shrink-0 size-3.5 text-gray-500 dark:text-neutral-500 \" xmlns=\"http://www.w3.org/2000/svg\" width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" fill=\"none\" stroke=\"currentColor\" stroke-width=\"2\" stroke-linecap=\"round\" stroke-linejoin=\"round\"><path d=\"m7 15 5 5 5-5\"/><path d=\"m7 9 5-5 5 5\"/></svg></div>"
}' class="hidden">
                                <option value="">Choose</option>
                                <?php
                                $SQL4 = "SELECT * FROM ICA_User WHERE USE_UUID NOT IN (SELECT USE_UUID FROM ICA_Prof)";
                                $result4 = $conn->query($SQL4);
                                while ($row4 = $result4->fetch_assoc()) {
                                    echo '<option value="'.$row4["USE_UUID"].'" data-hs-select-option=\'{
                            "description": "' .  (isset($row4["EMAIL"]) ? $row4["EMAIL"] : "Undefined") . '",
                            "icon": "<img class=\"inline-block rounded-full\" src=\"https://placehold.co/32x32\" />"
                            }\'>' .  (isset($row4["USERNAME"]) ? $row4["USERNAME"] : "Undefined") . '</option>';
                                }
                                ?>
                            </select>
                        </div>
                        <div class="mb-4">
                            <select id="titularisation-select" data-hs-select='{
  "placeholder": "Definis le type de titularisation",
  "toggleTag": "<button type=\"button\" aria-expanded=\"false\"></button>",
  "toggleClasses": "hs-select-disabled:pointer-events-none hs-select-disabled:opacity-50 relative py-3 ps-4 pe-9 flex gap-x-2 text-nowrap w-full cursor-pointer bg-white border border-gray-200 rounded-lg text-start text-sm focus:outline-none focus:ring-2 focus:ring-blue-500 dark:bg-neutral-900 dark:border-neutral-700 dark:text-neutral-400 dark:focus:outline-none dark:focus:ring-1 dark:focus:ring-neutral-600",
  "dropdownScope": "window",
  "dropdownClasses": "titularisation-select mt-2 z-[80] w-full max-h-72 p-1 space-y-0.5 bg-white border border-gray-200 rounded-lg overflow-hidden overflow-y-auto [&::-webkit-scrollbar]:w-2 [&::-webkit-scrollbar-thumb]:rounded-full [&::-webkit-scrollbar-track]:bg-gray-100 [&::-webkit-scrollbar-thumb]:bg-gray-300 dark:[&::-webkit-scrollbar-track]:bg-neutral-700 dark:[&::-webkit-scrollbar-thumb]:bg-neutral-500 dark:bg-neutral-900 dark:border-neutral-700",
  "dropdownVerticalFixedPlacement": "bottom",
  "optionClasses": "py-2 px-4 w-full text-sm text-gray-800 cursor-pointer hover:bg-gray-100 rounded-lg focus:outline-none focus:bg-gray-100 hs-select-disabled:pointer-events-none hs-select-disabled:opacity-50 dark:bg-neutral-900 dark:hover:bg-neutral-800 dark:text-neutral-200 dark:focus:bg-neutral-800",
  "optionTemplate": "<div class=\"flex justify-between items-center w-full\"><span data-title></span><span class=\"hidden hs-selected:block\"><svg class=\"shrink-0 size-3.5 text-blue-600 dark:text-blue-500 \" xmlns=\"http:.w3.org/2000/svg\" width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" fill=\"none\" stroke=\"currentColor\" stroke-width=\"2\" stroke-linecap=\"round\" stroke-linejoin=\"round\"><polyline points=\"20 6 9 17 4 12\"/></svg></span></div>",
  "extraMarkup": "<div class=\"absolute top-1/2 end-3 -translate-y-1/2\"><svg class=\"shrink-0 size-3.5 text-gray-500 dark:text-neutral-500 \" xmlns=\"http://www.w3.org/2000/svg\" width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" fill=\"none\" stroke=\"currentColor\" stroke-width=\"2\" stroke-linecap=\"round\" stroke-linejoin=\"round\"><path d=\"m7 15 5 5 5-5\"/><path d=\"m7 9 5-5 5 5\"/></svg></div>"
}' class="hidden">
                                <option value="">Choose</option>
                                <?php



                                $SQL6 = "SELECT * FROM ICA_Statut_Emploie";
                                $result6 = $conn->query($SQL6);
                                while ($row6 = $result6->fetch_assoc()) {
                                    echo '<option value="'.$row6['STA_ID'].'">'.$row6['STA_Libelle'].'</option>';
                                }



                                ?>
                            </select>
                        </div>
                        <div class="mb-4">
                            <select id="matieres-select" multiple="" data-hs-select='{
                              "placeholder": "Selectionner les matieres",
                              "dropdownScope": "window",
                              "dropdownClasses": "matieres-select mt-2 z-[80] w-full max-h-72 p-1 space-y-0.5 bg-white border border-gray-200 rounded-lg overflow-hidden overflow-y-auto [&::-webkit-scrollbar]:w-2 [&::-webkit-scrollbar-thumb]:rounded-full [&::-webkit-scrollbar-track]:bg-gray-100 [&::-webkit-scrollbar-thumb]:bg-gray-300 dark:[&::-webkit-scrollbar-track]:bg-neutral-700 dark:[&::-webkit-scrollbar-thumb]:bg-neutral-500 dark:bg-neutral-900 dark:border-neutral-700",
                              "optionClasses": "py-2 px-4 w-full text-sm text-gray-800 cursor-pointer hover:bg-gray-100 rounded-lg focus:outline-none focus:bg-gray-100 hs-select-disabled:pointer-events-none hs-select-disabled:opacity-50 dark:bg-neutral-900 dark:hover:bg-neutral-800 dark:focus:bg-neutral-800",
                              "mode": "tags",
                              "wrapperClasses": "relative ps-0.5 pe-9 min-h-[46px] flex items-center flex-wrap text-nowrap w-full border border-gray-200 rounded-lg text-start text-sm focus:border-blue-500 focus:ring-blue-500 dark:bg-neutral-900 dark:border-neutral-700 dark:text-neutral-400",
                              "tagsItemTemplate": "<div class=\"flex flex-nowrap items-center relative z-10 bg-white border border-gray-200 rounded-full p-1 m-1 dark:bg-neutral-900 dark:border-neutral-700 \"><div class=\"size-6 me-1\" data-icon></div><div class=\"whitespace-nowrap text-gray-800 dark:text-neutral-200 \" data-title></div><div class=\"inline-flex shrink-0 justify-center items-center size-5 ms-2 rounded-full text-gray-800 bg-gray-200 hover:bg-gray-300 focus:outline-none focus:ring-2 focus:ring-gray-400 text-sm dark:bg-neutral-700/50 dark:hover:bg-neutral-700 dark:text-neutral-400 cursor-pointer\" data-remove><svg class=\"shrink-0 size-3\" xmlns=\"http://www.w3.org/2000/svg\" width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" fill=\"none\" stroke=\"currentColor\" stroke-width=\"2\" stroke-linecap=\"round\" stroke-linejoin=\"round\"><path d=\"M18 6 6 18\"/><path d=\"m6 6 12 12\"/></svg></div></div>",
                              "tagsInputId": "hs-tags-input",
                              "tagsInputClasses": "py-3 px-2 ps-4 focus:ring-0 focus:border-0 focus:ring-offset-0 focus:shadow-none focus:border-none border-none rounded-lg order-1 text-sm outline-none dark:bg-neutral-900 dark:placeholder-neutral-400 dark:text-neutral-400",
                              "optionTemplate": "<div class=\"flex items-center\"><div class=\"size-8 me-2\" data-icon></div><div><div class=\"text-sm font-semibold text-gray-800 dark:text-neutral-200 \" data-title></div><div class=\"text-xs text-gray-500 dark:text-neutral-500 \" data-description></div></div><div class=\"ms-auto\"><span class=\"hidden hs-selected:block\"><svg class=\"shrink-0 size-4 text-blue-600\" xmlns=\"http://www.w3.org/2000/svg\" width=\"16\" height=\"16\" fill=\"currentColor\" viewBox=\"0 0 16 16\"><path d=\"M12.736 3.97a.733.733 0 0 1 1.047 0c.286.289.29.756.01 1.05L7.88 12.01a.733.733 0 0 1-1.065.02L3.217 8.384a.757.757 0 0 1 0-1.06.733.733 0 0 1 1.047 0l3.052 3.093 5.4-6.425a.247.247 0 0 1 .02-.022Z\"/></svg></span></div></div>",
                              "extraMarkup": "<div class=\"absolute top-1/2 end-3 -translate-y-1/2\"><svg class=\"shrink-0 size-3.5 text-gray-500 dark:text-neutral-500 \" xmlns=\"http://www.w3.org/2000/svg\" width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" fill=\"none\" stroke=\"currentColor\" stroke-width=\"2\" stroke-linecap=\"round\" stroke-linejoin=\"round\"><path d=\"m7 15 5 5 5-5\"/><path d=\"m7 9 5-5 5 5\"/></svg></div>"
                            }' class="hidden">
                                <option value="">Choose</option>
                                <?php
                                $SQL3 = "SELECT * FROM ICA_Matiere JOIN ICA_FORMAT USING (MAT_ID) JOIN ICA_Etude USING (ETU_ID)";
                                $result3 = $conn->query($SQL3);
                                while ($row3 = $result3->fetch_assoc()) {

                                    $color = substr(md5($row3['ETU_Libelle'] . $row3['MAT_Libelle']), 0, 6);
                                    echo '<option value="'.$row3["MAT_ID"].'" data-hs-select-option=\'{
                            "description": "' . $row3["ETU_Libelle"] . '",
                            "icon": "<img class=\"inline-block rounded-full\" src=\"https://singlecolorimage.com/get/' . $color . '/32x32\" />"
                            }\'>' . $row3["MAT_Libelle"] . '</option>';
                                }
                                ?>
                            </select>
                        </div>
                    </div>
                    <div class="flex justify-end items-center gap-x-2 py-3 px-4 border-t dark:border-neutral-700">
                        <button type="button" class="py-2 px-3 inline-flex items-center gap-x-2 text-sm font-medium rounded-lg border border-gray-200 bg-white text-gray-800 shadow-sm hover:bg-gray-50 focus:outline-none focus:bg-gray-50 disabled:opacity-50 disabled:pointer-events-none dark:bg-neutral-800 dark:border-neutral-700 dark:text-white dark:hover:bg-neutral-700 dark:focus:bg-neutral-700" data-hs-overlay="#hs-vertically-centered-scrollable-modal">
                            Close
                        </button>
                        <button onclick="addProf(this)" type="button" class="py-2 px-3 inline-flex items-center gap-x-2 text-sm font-medium rounded-lg border border-transparent bg-blue-600 text-white hover:bg-blue-700 focus:outline-none focus:bg-blue-700 disabled:opacity-50 disabled:pointer-events-none">
                            Add
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="/assets/js/cours.js"></script>
<script src="https://cdn.jsdelivr.net/npm/flowbite@2.5.2/dist/flowbite.min.js"></script>
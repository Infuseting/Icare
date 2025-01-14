<?php
$conn = getConn();
if (!isset($conn)) {
    echo 'Error While loading (You can\' access to this page !)';
    exit();
}

if (!(hasAdminPermission(7)))  {
    Header('Location: /error/401');
    exit();
}
?>

<div class="flex flex-col justify-start m-10">
    <h1 class="pl-5 text-4xl font-semibold text-gray-900 text-start">Study</h1>
    <p class="pl-5 text-lg text-gray-500 dark:text-gray-400 text-start ">Manage study.</p>
    <hr class="w-full my-10 border-gray-200 dark:border-gray-700">

    <div class="relative max-w-full m-10">

        <table id="User-Table" class="w-full text-sm text-left rounded-lg rtl:text-right text-gray-500 dark:text-gray-400">
            <thead class="text-xs text-gray-700 uppercase bg-gray-50 dark:bg-gray-700 dark:text-gray-400">
            <tr class="table-header">
                <th scope="col" class="px-6 py-3">
                    Temporalité
                </th>
                <th scope="col" class="px-6 py-3">
                    Etude
                </th>
                <th scope="col" class="px-6 py-3">
                    Matiere
                </th>
                <th scope="col" class="px-6 py-3">
                    Action
                </th>
            </tr>
            </thead>
            <tbody class="overflow-y-auto ">
                <?php
                    $SQL = "SELECT * FROM ICA_FORMAT JOIN ICA_Matiere USING (MAT_ID) JOIN ICA_Temporalite USING (SEM_ID) JOIN ICA_Etude USING (ETU_ID)";
                    $result = $conn->query($SQL);
                    if ($result->num_rows > 0) {
                        while ($row = $result->fetch_assoc()) {
                            echo '<tr class="odd:bg-white odd:dark:bg-gray-900 even:bg-gray-50 even:dark:bg-gray-800 border-b dark:border-gray-700">';
                            echo '<td class="px-6 py-4 whitespace-nowrap">';
                            echo $row['SEM_Libelle'];
                            echo '</td>';
                            echo '<td class="px-6 py-4 whitespace-nowrap">';
                            echo $row['ETU_Libelle'];
                            echo '</td>';
                            echo '<td class="px-6 py-4 whitespace-nowrap">';
                            echo $row['MAT_Libelle'];
                            echo '</td>';
                            echo '<td class="px-6 py-4 w-1/4">';
                            echo '<div class="flex items-center space-x-4 text-sm">';
                            echo '<button onclick="deleteStudy(this, '.$row["MAT_ID"].', '.$row["SEM_ID"].', '.$row["ETU_ID"].')" class="px-2 py-2 bg-red-500 text-white rounded">Delete</button>';
                            echo '</div>';
                            echo '</td>';
                            echo '</tr>';
                        }
                    }
                ?>
                <tr class="last:sticky last:bottom-0 odd:bg-white odd:dark:bg-gray-900 even:bg-gray-50 even:dark:bg-gray-800 border-b dark:border-gray-700">
                    <td class="px-6 py-4 whitespace-nowrap semestre">
                        <select data-hs-select='{
                              "hasSearch": true,
                              "searchPlaceholder": "Temporalité ...",
                              "searchClasses": "block w-full text-sm border-gray-200 rounded-lg focus:border-blue-500 focus:ring-blue-500 before:absolute before:inset-0 before:z-[1] dark:bg-neutral-900 dark:border-neutral-700 dark:text-neutral-400 dark:placeholder-neutral-500 py-2 px-3",
                              "searchWrapperClasses": "bg-white p-2 -mx-1 sticky top-0 dark:bg-neutral-900",
                              "placeholder": "Temporalité ...",
                              "toggleTag": "<button type=\"button\" aria-expanded=\"false\"><span class=\"me-2\" data-icon></span><span class=\"text-gray-800 dark:text-neutral-200 \" data-title></span></button>",
                              "toggleClasses": "hs-select-disabled:pointer-events-none hs-select-disabled:opacity-50 relative py-3 ps-4 pe-9 flex gap-x-2 text-nowrap w-full cursor-pointer bg-white border border-gray-200 rounded-lg text-start text-sm focus:outline-none focus:ring-2 focus:ring-blue-500 dark:bg-neutral-900 dark:border-neutral-700 dark:text-neutral-400 dark:focus:outline-none dark:focus:ring-1 dark:focus:ring-neutral-600",
                              "dropdownClasses": "mt-2 max-h-72 pb-1 px-1 space-y-0.5 z-20 w-full bg-white border border-gray-200 rounded-lg overflow-hidden overflow-y-auto [&::-webkit-scrollbar]:w-2 [&::-webkit-scrollbar-thumb]:rounded-full [&::-webkit-scrollbar-track]:bg-gray-100 [&::-webkit-scrollbar-thumb]:bg-gray-300 dark:[&::-webkit-scrollbar-track]:bg-neutral-700 dark:[&::-webkit-scrollbar-thumb]:bg-neutral-500 dark:bg-neutral-900 dark:border-neutral-700",
                              "optionClasses": "py-2 px-4 w-full text-sm text-gray-800 cursor-pointer hover:bg-gray-100 rounded-lg focus:outline-none focus:bg-gray-100 dark:bg-neutral-900 dark:hover:bg-neutral-800 dark:text-neutral-200 dark:focus:bg-neutral-800",
                              "optionTemplate": "<div><div class=\"flex items-center\"><div class=\"me-2\" data-icon></div><div class=\"text-gray-800 dark:text-neutral-200 \" data-title></div></div></div>",
                              "extraMarkup": "<div class=\"absolute top-1/2 end-3 -translate-y-1/2\"><svg class=\"shrink-0 size-3.5 text-gray-500 dark:text-neutral-500 \" xmlns=\"http://www.w3.org/2000/svg\" width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" fill=\"none\" stroke=\"currentColor\" stroke-width=\"2\" stroke-linecap=\"round\" stroke-linejoin=\"round\"><path d=\"m7 15 5 5 5-5\"/><path d=\"m7 9 5-5 5 5\"/></svg></div>"
                            }' class="hidden">
                            <option value="">Choose</option>
                            <?php
                                $SQL = "SELECT * FROM ICA_Temporalite";
                                $result = $conn->query($SQL);
                                while ($row = $result->fetch_assoc()) {
                                    echo '<option value="'.$row['SEM_ID'].'">'.$row['SEM_Libelle'].'</option>';
                                }


                            ?>
                        </select>
                    </td>
                    <td class="px-6 py-4 whitespace-nowrap etude">
                        <select onchange="changeEtude(this)" data-hs-select='{
                              "hasSearch": true,
                              "searchPlaceholder": "Etude ...",
                              "searchClasses": "block w-full text-sm border-gray-200 rounded-lg focus:border-blue-500 focus:ring-blue-500 before:absolute before:inset-0 before:z-[1] dark:bg-neutral-900 dark:border-neutral-700 dark:text-neutral-400 dark:placeholder-neutral-500 py-2 px-3",
                              "searchWrapperClasses": "bg-white p-2 -mx-1 sticky top-0 dark:bg-neutral-900",
                              "placeholder": "Etude ...",
                              "toggleTag": "<button type=\"button\" aria-expanded=\"false\"><span class=\"me-2\" data-icon></span><span class=\"text-gray-800 dark:text-neutral-200 \" data-title></span></button>",
                              "toggleClasses": "hs-select-disabled:pointer-events-none hs-select-disabled:opacity-50 relative py-3 ps-4 pe-9 flex gap-x-2 text-nowrap w-full cursor-pointer bg-white border border-gray-200 rounded-lg text-start text-sm focus:outline-none focus:ring-2 focus:ring-blue-500 dark:bg-neutral-900 dark:border-neutral-700 dark:text-neutral-400 dark:focus:outline-none dark:focus:ring-1 dark:focus:ring-neutral-600",
                              "dropdownClasses": "mt-2 max-h-72 pb-1 px-1 space-y-0.5 z-20 w-full bg-white border border-gray-200 rounded-lg overflow-hidden overflow-y-auto [&::-webkit-scrollbar]:w-2 [&::-webkit-scrollbar-thumb]:rounded-full [&::-webkit-scrollbar-track]:bg-gray-100 [&::-webkit-scrollbar-thumb]:bg-gray-300 dark:[&::-webkit-scrollbar-track]:bg-neutral-700 dark:[&::-webkit-scrollbar-thumb]:bg-neutral-500 dark:bg-neutral-900 dark:border-neutral-700",
                              "optionClasses": "py-2 px-4 w-full text-sm text-gray-800 cursor-pointer hover:bg-gray-100 rounded-lg focus:outline-none focus:bg-gray-100 dark:bg-neutral-900 dark:hover:bg-neutral-800 dark:text-neutral-200 dark:focus:bg-neutral-800",
                              "optionTemplate": "<div><div class=\"flex items-center\"><div class=\"me-2\" data-icon></div><div class=\"text-gray-800 dark:text-neutral-200 \" data-title></div></div></div>",
                              "extraMarkup": "<div class=\"absolute top-1/2 end-3 -translate-y-1/2\"><svg class=\"shrink-0 size-3.5 text-gray-500 dark:text-neutral-500 \" xmlns=\"http://www.w3.org/2000/svg\" width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" fill=\"none\" stroke=\"currentColor\" stroke-width=\"2\" stroke-linecap=\"round\" stroke-linejoin=\"round\"><path d=\"m7 15 5 5 5-5\"/><path d=\"m7 9 5-5 5 5\"/></svg></div>"
                            }' class="hidden">
                            <option value="">Choose</option>
                            <?php
                                $SQL = "SELECT * FROM ICA_Etude";
                                $result = $conn->query($SQL);
                                while ($row = $result->fetch_assoc()) {
                                    echo '<option value="'.$row['ETU_ID'].'">'.$row['ETU_Libelle'].'</option>';
                                }
                            ?>
                            <option value="-1"> Add New </option>
                        </select>
                    </td>
                    <td class="px-6 py-4 whitespace-nowrap matiere">

                        <select onchange="changeMatiere(this)" data-hs-select='{
                              "hasSearch": true,
                              "searchPlaceholder": "Matiere ...",
                              "searchClasses": "block w-full text-sm border-gray-200 rounded-lg focus:border-blue-500 focus:ring-blue-500 before:absolute before:inset-0 before:z-[1] dark:bg-neutral-900 dark:border-neutral-700 dark:text-neutral-400 dark:placeholder-neutral-500 py-2 px-3",
                              "searchWrapperClasses": "bg-white p-2 -mx-1 sticky top-0 dark:bg-neutral-900",
                              "placeholder": "Matiere ...",
                              "toggleTag": "<button type=\"button\" aria-expanded=\"false\"><span class=\"me-2\" data-icon></span><span class=\"text-gray-800 dark:text-neutral-200 \" data-title></span></button>",
                              "toggleClasses": "hs-select-disabled:pointer-events-none hs-select-disabled:opacity-50 relative py-3 ps-4 pe-9 flex gap-x-2 text-nowrap w-full cursor-pointer bg-white border border-gray-200 rounded-lg text-start text-sm focus:outline-none focus:ring-2 focus:ring-blue-500 dark:bg-neutral-900 dark:border-neutral-700 dark:text-neutral-400 dark:focus:outline-none dark:focus:ring-1 dark:focus:ring-neutral-600",
                              "dropdownClasses": "mt-2 max-h-72 pb-1 px-1 space-y-0.5 z-20 w-full bg-white border border-gray-200 rounded-lg overflow-hidden overflow-y-auto [&::-webkit-scrollbar]:w-2 [&::-webkit-scrollbar-thumb]:rounded-full [&::-webkit-scrollbar-track]:bg-gray-100 [&::-webkit-scrollbar-thumb]:bg-gray-300 dark:[&::-webkit-scrollbar-track]:bg-neutral-700 dark:[&::-webkit-scrollbar-thumb]:bg-neutral-500 dark:bg-neutral-900 dark:border-neutral-700",
                              "optionClasses": "py-2 px-4 w-full text-sm text-gray-800 cursor-pointer hover:bg-gray-100 rounded-lg focus:outline-none focus:bg-gray-100 dark:bg-neutral-900 dark:hover:bg-neutral-800 dark:text-neutral-200 dark:focus:bg-neutral-800",
                              "optionTemplate": "<div><div class=\"flex items-center\"><div class=\"me-2\" data-icon></div><div class=\"text-gray-800 dark:text-neutral-200 \" data-title></div></div></div>",
                              "extraMarkup": "<div class=\"absolute top-1/2 end-3 -translate-y-1/2\"><svg class=\"shrink-0 size-3.5 text-gray-500 dark:text-neutral-500 \" xmlns=\"http://www.w3.org/2000/svg\" width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" fill=\"none\" stroke=\"currentColor\" stroke-width=\"2\" stroke-linecap=\"round\" stroke-linejoin=\"round\"><path d=\"m7 15 5 5 5-5\"/><path d=\"m7 9 5-5 5 5\"/></svg></div>"
                            }' class="hidden">
                            <option value="">Choose</option>
                            <?php
                                $SQL = "SELECT * FROM ICA_Matiere";
                                $result = $conn->query($SQL);
                                while ($row = $result->fetch_assoc()) {
                                    echo '<option value="'.$row['MAT_ID'].'">'.$row['MAT_Libelle'].'</option>';
                                }

                            ?>
                            <option value="-1"> Add New </option>
                        </select>
                    </td>
                    <td class="px-6 py-4 whitespace-nowrap">
                        <button onclick="createStudy(this)" class="px-2 py-2 bg-green-500 text-white rounded">Create</button>
                    </td>
                </tr>
            </tbody>
        </table>
        <div id="hs-modal-etude" class="hs-overlay hs-overlay-open:opacity-100 hs-overlay-open:duration-500 hidden size-full fixed top-0 start-0 z-[80] opacity-0 overflow-x-hidden transition-all overflow-y-auto pointer-events-none" role="dialog" tabindex="-1" aria-labelledby="hs-basic-modal-label">
            <div class="sm:max-w-lg sm:w-full m-3 sm:mx-auto">
                <div class="flex flex-col bg-white border shadow-sm rounded-xl pointer-events-auto dark:bg-neutral-800 dark:border-neutral-700 dark:shadow-neutral-700/70">
                    <div class="flex justify-between items-center py-3 px-4 border-b dark:border-neutral-700">
                        <h3 id="hs-basic-modal-label" class="font-bold text-gray-800 dark:text-white">
                            Indiqué l'intitulé de l'étude
                        </h3>
                        <button type="button" class="size-8 inline-flex justify-center items-center gap-x-2 rounded-full border border-transparent bg-gray-100 text-gray-800 hover:bg-gray-200 focus:outline-none focus:bg-gray-200 disabled:opacity-50 disabled:pointer-events-none dark:bg-neutral-700 dark:hover:bg-neutral-600 dark:text-neutral-400 dark:focus:bg-neutral-600" aria-label="Close" data-hs-overlay="#hs-basic-modal">
                            <span class="sr-only">Close</span>
                            <svg class="shrink-0 size-4" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                <path d="M18 6 6 18"></path>
                                <path d="m6 6 12 12"></path>
                            </svg>
                        </button>
                    </div>
                    <div class="p-4 overflow-y-auto">
                        <div class="max-w-sm space-y-3">
                            <input type="text" class="py-3 px-4 block w-full border-gray-200 rounded-lg text-sm focus:border-blue-500 focus:ring-blue-500 disabled:opacity-50 disabled:pointer-events-none dark:bg-neutral-900 dark:border-neutral-700 dark:text-neutral-400 dark:placeholder-neutral-500 dark:focus:ring-neutral-600" placeholder="Intitulé...">
                        </div>
                    </div>
                    <div class="flex justify-end items-center gap-x-2 py-3 px-4 border-t dark:border-neutral-700">
                        <button type="button" class="py-2 px-3 inline-flex items-center gap-x-2 text-sm font-medium rounded-lg border border-gray-200 bg-white text-gray-800 shadow-sm hover:bg-gray-50 focus:outline-none focus:bg-gray-50 disabled:opacity-50 disabled:pointer-events-none dark:bg-neutral-800 dark:border-neutral-700 dark:text-white dark:hover:bg-neutral-700 dark:focus:bg-neutral-700" data-hs-overlay="#hs-basic-modal">
                            Close
                        </button>
                        <button onclick="saveEtude(this)" type="button" class="py-2 px-3 inline-flex items-center gap-x-2 text-sm font-medium rounded-lg border border-transparent bg-blue-600 text-white hover:bg-blue-700 focus:outline-none focus:bg-blue-700 disabled:opacity-50 disabled:pointer-events-none">
                            Save changes
                        </button>
                    </div>
                </div>
            </div>
        </div>
        <div id="hs-modal-matiere" class="hs-overlay hs-overlay-open:opacity-100 hs-overlay-open:duration-500 hidden size-full fixed top-0 start-0 z-[80] opacity-0 overflow-x-hidden transition-all overflow-y-auto pointer-events-none" role="dialog" tabindex="-1" aria-labelledby="hs-basic-modal-label">
            <div class="sm:max-w-lg sm:w-full m-3 sm:mx-auto">
                <div class="flex flex-col bg-white border shadow-sm rounded-xl pointer-events-auto dark:bg-neutral-800 dark:border-neutral-700 dark:shadow-neutral-700/70">
                    <div class="flex justify-between items-center py-3 px-4 border-b dark:border-neutral-700">
                        <h3 id="hs-basic-modal-label" class="font-bold text-gray-800 dark:text-white">
                            Indiqué l'intitulé de la matiere
                        </h3>
                        <button type="button" class="size-8 inline-flex justify-center items-center gap-x-2 rounded-full border border-transparent bg-gray-100 text-gray-800 hover:bg-gray-200 focus:outline-none focus:bg-gray-200 disabled:opacity-50 disabled:pointer-events-none dark:bg-neutral-700 dark:hover:bg-neutral-600 dark:text-neutral-400 dark:focus:bg-neutral-600" aria-label="Close" data-hs-overlay="#hs-basic-modal">
                            <span class="sr-only">Close</span>
                            <svg class="shrink-0 size-4" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                <path d="M18 6 6 18"></path>
                                <path d="m6 6 12 12"></path>
                            </svg>
                        </button>
                    </div>
                    <div class="p-4 overflow-y-auto">
                        <div class="max-w-sm space-y-3">
                            <input type="text" class="py-3 px-4 block w-full border-gray-200 rounded-lg text-sm focus:border-blue-500 focus:ring-blue-500 disabled:opacity-50 disabled:pointer-events-none dark:bg-neutral-900 dark:border-neutral-700 dark:text-neutral-400 dark:placeholder-neutral-500 dark:focus:ring-neutral-600" placeholder="Intitulé...">
                        </div>
                    </div>
                    <div class="flex justify-end items-center gap-x-2 py-3 px-4 border-t dark:border-neutral-700">
                        <button type="button" class="py-2 px-3 inline-flex items-center gap-x-2 text-sm font-medium rounded-lg border border-gray-200 bg-white text-gray-800 shadow-sm hover:bg-gray-50 focus:outline-none focus:bg-gray-50 disabled:opacity-50 disabled:pointer-events-none dark:bg-neutral-800 dark:border-neutral-700 dark:text-white dark:hover:bg-neutral-700 dark:focus:bg-neutral-700" data-hs-overlay="#hs-basic-modal">
                            Close
                        </button>
                        <button onclick="saveMatiere(this)" type="button" class="py-2 px-3 inline-flex items-center gap-x-2 text-sm font-medium rounded-lg border border-transparent bg-blue-600 text-white hover:bg-blue-700 focus:outline-none focus:bg-blue-700 disabled:opacity-50 disabled:pointer-events-none">
                            Save changes
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="/assets/js/study.js"></script>
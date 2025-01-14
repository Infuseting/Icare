<?php
$conn = getConn();
if (!isset($conn)) {
    echo 'Error While loading (You can\' access to this page !)';
    exit();
}

if (!(hasAdminPermission(8)))  {
    Header('Location: /error/401');
    exit();
}

function getHeritage($CLA_ID) {
    global $conn;
    error_log($CLA_ID);
    $SQL = "SELECT * FROM ICA_HERITE WHERE ANCETRE_CLA_ID = ?";
    $stmt = $conn->prepare($SQL);
    $stmt->bind_param("i", $CLA_ID);
    $stmt->execute();
    $result = $stmt->get_result();
    if ($result->num_rows > 0) {
        $heritage = [];
        while ($row = $result->fetch_assoc()) {
            $heritage[$row['CLA_ID']] = getHeritage($row['CLA_ID']);
        }
        return $heritage;
    }
    else {
        return $CLA_ID;
    }
}
?>
<div class="flex flex-col justify-start m-10">
    <h1 class="pl-5 text-4xl font-semibold text-gray-900 text-start">Classes</h1>
    <p class="pl-5 text-lg text-gray-500 dark:text-gray-400 text-start ">Manage class</p>
    <hr class="w-full my-10 border-gray-200 dark:border-gray-700">
    <button class="px-4 py-2 bg-blue-500 text-white rounded" onclick="openGraph()">Open Heritage</button>
    <div class="relative max-w-full m-10">
        <table id="User-Table" class="w-full text-sm text-left rounded-lg rtl:text-right text-gray-500 dark:text-gray-400">
            <thead class="text-xs text-gray-700 uppercase bg-gray-50 dark:bg-gray-700 dark:text-gray-400">
            <tr class="table-header">
                <th scope="col" class="px-6 py-3">
                    Etude
                </th>
                <th scope="col" class="px-6 py-3">
                    Niveau
                </th>
                <th scope="col" class="px-6 py-3">
                    Genre
                </th>
                <th scope="col" class="px-6 py-3">
                    Libelle
                </th>
                <th scope="col" class="px-6 py-3">
                    Heritage
                </th>
                <th scope="col" class="px-6 py-3">
                    Actions
                </th>

            </tr>
            </thead>
            <tbody>
            <?php
                $SQL = "SELECT * FROM ICA_Classe JOIN ICA_Niveau USING (NIV_ID) JOIN ICA_Etude USING (ETU_ID) JOIN ICA_Type_Classe USING (TYPC_ID)";
                $stmt = $conn->prepare($SQL);
                $stmt->execute();
                $result = $stmt->get_result();
                while ($row = $result->fetch_assoc()) {
                    echo '<tr class="odd:bg-white odd:dark:bg-gray-900 even:bg-gray-50 even:dark:bg-gray-800 border-b dark:border-gray-700">
                    <th scope="row" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">';
                    echo $row['ETU_Libelle'];
                    echo '</th>';
                    echo '<td class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">';
                    echo $row['NIV_Libelle'];
                    echo '</td>';
                    echo '<td class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">';
                    echo $row['TYPC_Libelle'];
                    echo '</td>';
                    echo '<td class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">';
                    echo $row['CLA_Libelle'];
                    echo '</td>';
                    echo '<td class="heritage px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">';
                    echo '<select multiple="" data-hs-select=\'{
                          "hasSearch": true,
                          "searchPlaceholder": "Heritage ...",
                          "searchClasses": "block w-full text-sm border-gray-200 rounded-lg focus:border-blue-500 focus:ring-blue-500 before:absolute before:inset-0 before:z-[1] dark:bg-neutral-900 dark:border-neutral-700 dark:text-neutral-400 dark:placeholder-neutral-500 py-2 px-3",
                          "searchWrapperClasses": "bg-white p-2 -mx-1 sticky top-0 dark:bg-neutral-900",
                        "dropdownClasses": "mt-2 z-50 w-full max-h-72 p-1 space-y-0.5 bg-white border border-gray-200 rounded-lg overflow-hidden overflow-y-auto [&::-webkit-scrollbar]:w-2 [&::-webkit-scrollbar-thumb]:rounded-full [&::-webkit-scrollbar-track]:bg-gray-100 [&::-webkit-scrollbar-thumb]:bg-gray-300 dark:[&::-webkit-scrollbar-track]:bg-neutral-700 dark:[&::-webkit-scrollbar-thumb]:bg-neutral-500 dark:bg-neutral-900 dark:border-neutral-700",
                          "optionClasses": "py-2 px-4 w-full text-sm text-gray-800 cursor-pointer hover:bg-gray-100 rounded-lg focus:outline-none focus:bg-gray-100 hs-select-disabled:pointer-events-none hs-select-disabled:opacity-50 dark:bg-neutral-900 dark:hover:bg-neutral-800 dark:focus:bg-neutral-800",
                          "mode": "tags",
                          "wrapperClasses": "relative ps-0.5 pe-9 min-h-[46px] flex items-center flex-wrap text-nowrap w-full border border-gray-200 rounded-lg text-start text-sm focus:border-blue-500 focus:ring-blue-500 dark:bg-neutral-900 dark:border-neutral-700 dark:text-neutral-400",
                          "tagsItemTemplate": "<div class=\"flex flex-nowrap items-center relative z-10 bg-white border border-gray-200 rounded-full p-1 m-1 dark:bg-neutral-900 dark:border-neutral-700 \"><div class=\"size-6 me-1\" data-icon></div><div class=\"whitespace-nowrap text-gray-800 dark:text-neutral-200 \" data-title></div><div class=\"inline-flex shrink-0 justify-center items-center size-5 ms-2 rounded-full text-gray-800 bg-gray-200 hover:bg-gray-300 focus:outline-none focus:ring-2 focus:ring-gray-400 text-sm dark:bg-neutral-700/50 dark:hover:bg-neutral-700 dark:text-neutral-400 cursor-pointer\" data-remove><svg class=\"shrink-0 size-3\" xmlns=\"http://www.w3.org/2000/svg\" width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" fill=\"none\" stroke=\"currentColor\" stroke-width=\"2\" stroke-linecap=\"round\" stroke-linejoin=\"round\"><path d=\"M18 6 6 18\"/><path d=\"m6 6 12 12\"/></svg></div></div>",
                          "tagsInputId": "hs-tags-input",
                          "tagsInputClasses": "py-3 px-2 ps-4 focus:ring-0 focus:border-0 focus:ring-offset-0 focus:shadow-none focus:border-none border-none rounded-lg order-1 text-sm outline-none dark:bg-neutral-900 dark:placeholder-neutral-400 dark:text-neutral-400",
                          "optionTemplate": "<div class=\"flex items-center\"><div class=\"size-8 me-2\" data-icon></div><div><div class=\"text-sm font-semibold text-gray-800 dark:text-neutral-200 \" data-title></div><div class=\"text-xs text-gray-500 dark:text-neutral-500 \" data-description></div></div><div class=\"ms-auto\"><span class=\"hidden hs-selected:block\"><svg class=\"shrink-0 size-4 text-blue-600\" xmlns=\"http://www.w3.org/2000/svg\" width=\"16\" height=\"16\" fill=\"currentColor\" viewBox=\"0 0 16 16\"><path d=\"M12.736 3.97a.733.733 0 0 1 1.047 0c.286.289.29.756.01 1.05L7.88 12.01a.733.733 0 0 1-1.065.02L3.217 8.384a.757.757 0 0 1 0-1.06.733.733 0 0 1 1.047 0l3.052 3.093 5.4-6.425a.247.247 0 0 1 .02-.022Z\"/></svg></span></div></div>",
                          "extraMarkup": "<div class=\"absolute top-1/2 end-3 -translate-y-1/2\"><svg class=\"shrink-0 size-3.5 text-gray-500 dark:text-neutral-500 \" xmlns=\"http://www.w3.org/2000/svg\" width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" fill=\"none\" stroke=\"currentColor\" stroke-width=\"2\" stroke-linecap=\"round\" stroke-linejoin=\"round\"><path d=\"m7 15 5 5 5-5\"/><path d=\"m7 9 5-5 5 5\"/></svg></div>"
                              }\'>';
                    echo '<option value="">Choose</option>';
                    $SQL2 = "SELECT * FROM ICA_Classe JOIN ICA_Type_Classe USING (TYPC_ID) JOIN ICA_Etude USING (ETU_ID) WHERE CLA_ID != ?";
                    $stmt2 = $conn->prepare($SQL2);
                    $stmt2->bind_param("i", $row['CLA_ID']);
                    $stmt2->execute();
                    $result2 = $stmt2->get_result();

                    while ($row2 = $result2->fetch_assoc()) {
                        $SQL3 = "SELECT * FROM ICA_HERITE WHERE CLA_ID = ? AND ANCETRE_CLA_ID = ?";
                        $stmt3 = $conn->prepare($SQL3);
                        $stmt3->bind_param("ii", $row['CLA_ID'], $row2['CLA_ID']);
                        $stmt3->execute();
                        $result3 = $stmt3->get_result();

                        $color = substr(md5($row2['CLA_Libelle']), 0, 6);
                        echo '<option ' . (0 < $result3->num_rows ? 'selected="" ' : '') . 'value="' . $row2['CLA_ID'] . '" data-hs-select-option=\'{
    "description": "' . $row2['ETU_Libelle'] . '",
    "icon": "<img class=\"inline-block rounded-full\" src=\"https://singlecolorimage.com/get/' . $color . '/32x32\" />"
}\'>'.$row2['CLA_Libelle'].'</option>';
                    }
                    echo '</select>';
                    echo '</td>';
                    echo '<td class="px-6 py-4 text-center">';
                    echo '<button class="px-2 py-1 bg-blue-500 text-white rounded" onclick="editClass(this, ' . $row['CLA_ID'] . ')">Edit</button>';
                    echo '<button class="px-2 py-1 bg-red-500 text-white rounded ml-2" onclick="deleteClass(this, ' . $row['CLA_ID'] . ')">Delete</button>';
                    echo '</td>';
                    echo '</tr>';
                }

            ?>
            <tr class="last:sticky last:bottom-0 odd:bg-white odd:dark:bg-gray-900 even:bg-gray-50 even:dark:bg-gray-800 border-b dark:border-gray-700">
                <th scope="row" class="etude px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                    <select data-hs-select='{
                              "hasSearch": true,
                              "searchPlaceholder": "Etude ...",
                              "searchClasses": "block w-full text-sm border-gray-200 rounded-lg focus:border-blue-500 focus:ring-blue-500 before:absolute before:inset-0 before:z-[1] dark:bg-neutral-900 dark:border-neutral-700 dark:text-neutral-400 dark:placeholder-neutral-500 py-2 px-3",
                              "searchWrapperClasses": "bg-white p-2 -mx-1 sticky top-0 dark:bg-neutral-900",
                              "placeholder": "Etude ...",
                              "toggleTag": "<div type=\"button\" aria-expanded=\"false\"><span class=\"me-2\" data-icon></span><span class=\"text-gray-800 dark:text-neutral-200 \" data-title></span></button>",
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
                    </select>
                </th>
                <td class="niveau px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                    <select data-hs-select='{
                              "hasSearch": true,
                              "searchPlaceholder": "Niveau ...",
                              "searchClasses": "block w-full text-sm border-gray-200 rounded-lg focus:border-blue-500 focus:ring-blue-500 before:absolute before:inset-0 before:z-[1] dark:bg-neutral-900 dark:border-neutral-700 dark:text-neutral-400 dark:placeholder-neutral-500 py-2 px-3",
                              "searchWrapperClasses": "bg-white p-2 -mx-1 sticky top-0 dark:bg-neutral-900",
                              "placeholder": "Niveau ...",
                              "toggleTag": "<div type=\"button\" aria-expanded=\"false\"><span class=\"me-2\" data-icon></span><span class=\"text-gray-800 dark:text-neutral-200 \" data-title></span></button>",
                              "toggleClasses": "hs-select-disabled:pointer-events-none hs-select-disabled:opacity-50 relative py-3 ps-4 pe-9 flex gap-x-2 text-nowrap w-full cursor-pointer bg-white border border-gray-200 rounded-lg text-start text-sm focus:outline-none focus:ring-2 focus:ring-blue-500 dark:bg-neutral-900 dark:border-neutral-700 dark:text-neutral-400 dark:focus:outline-none dark:focus:ring-1 dark:focus:ring-neutral-600",
                              "dropdownClasses": "mt-2 max-h-72 pb-1 px-1 space-y-0.5 z-20 w-full bg-white border border-gray-200 rounded-lg overflow-hidden overflow-y-auto [&::-webkit-scrollbar]:w-2 [&::-webkit-scrollbar-thumb]:rounded-full [&::-webkit-scrollbar-track]:bg-gray-100 [&::-webkit-scrollbar-thumb]:bg-gray-300 dark:[&::-webkit-scrollbar-track]:bg-neutral-700 dark:[&::-webkit-scrollbar-thumb]:bg-neutral-500 dark:bg-neutral-900 dark:border-neutral-700",
                              "optionClasses": "py-2 px-4 w-full text-sm text-gray-800 cursor-pointer hover:bg-gray-100 rounded-lg focus:outline-none focus:bg-gray-100 dark:bg-neutral-900 dark:hover:bg-neutral-800 dark:text-neutral-200 dark:focus:bg-neutral-800",
                              "optionTemplate": "<div><div class=\"flex items-center\"><div class=\"me-2\" data-icon></div><div class=\"text-gray-800 dark:text-neutral-200 \" data-title></div></div></div>",
                              "extraMarkup": "<div class=\"absolute top-1/2 end-3 -translate-y-1/2\"><svg class=\"shrink-0 size-3.5 text-gray-500 dark:text-neutral-500 \" xmlns=\"http://www.w3.org/2000/svg\" width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" fill=\"none\" stroke=\"currentColor\" stroke-width=\"2\" stroke-linecap=\"round\" stroke-linejoin=\"round\"><path d=\"m7 15 5 5 5-5\"/><path d=\"m7 9 5-5 5 5\"/></svg></div>"
                            }' class="hidden">
                        <option value="">Choose</option>
                        <?php
                        $SQL = "SELECT * FROM ICA_Niveau";
                        $result = $conn->query($SQL);
                        while ($row = $result->fetch_assoc()) {
                            echo '<option value="'.$row['NIV_ID'].'">'.$row['NIV_Libelle'].'</option>';
                        }

                        ?>
                    </select>
                </td>
                <td class="type_classe px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                    <select data-hs-select='{
                              "hasSearch": true,
                              "searchPlaceholder": "Type de Classe ...",
                              "searchClasses": "block w-full text-sm border-gray-200 rounded-lg focus:border-blue-500 focus:ring-blue-500 before:absolute before:inset-0 before:z-[1] dark:bg-neutral-900 dark:border-neutral-700 dark:text-neutral-400 dark:placeholder-neutral-500 py-2 px-3",
                              "searchWrapperClasses": "bg-white p-2 -mx-1 sticky top-0 dark:bg-neutral-900",
                              "placeholder": "Type de Classe ...",
                              "toggleTag": "<div type=\"button\" aria-expanded=\"false\"><span class=\"me-2\" data-icon></span><span class=\"text-gray-800 dark:text-neutral-200 \" data-title></span></button>",
                              "toggleClasses": "hs-select-disabled:pointer-events-none hs-select-disabled:opacity-50 relative py-3 ps-4 pe-9 flex gap-x-2 text-nowrap w-full cursor-pointer bg-white border border-gray-200 rounded-lg text-start text-sm focus:outline-none focus:ring-2 focus:ring-blue-500 dark:bg-neutral-900 dark:border-neutral-700 dark:text-neutral-400 dark:focus:outline-none dark:focus:ring-1 dark:focus:ring-neutral-600",
                              "dropdownClasses": "mt-2 max-h-72 pb-1 px-1 space-y-0.5 z-20 w-full bg-white border border-gray-200 rounded-lg overflow-hidden overflow-y-auto [&::-webkit-scrollbar]:w-2 [&::-webkit-scrollbar-thumb]:rounded-full [&::-webkit-scrollbar-track]:bg-gray-100 [&::-webkit-scrollbar-thumb]:bg-gray-300 dark:[&::-webkit-scrollbar-track]:bg-neutral-700 dark:[&::-webkit-scrollbar-thumb]:bg-neutral-500 dark:bg-neutral-900 dark:border-neutral-700",
                              "optionClasses": "py-2 px-4 w-full text-sm text-gray-800 cursor-pointer hover:bg-gray-100 rounded-lg focus:outline-none focus:bg-gray-100 dark:bg-neutral-900 dark:hover:bg-neutral-800 dark:text-neutral-200 dark:focus:bg-neutral-800",
                              "optionTemplate": "<div><div class=\"flex items-center\"><div class=\"me-2\" data-icon></div><div class=\"text-gray-800 dark:text-neutral-200 \" data-title></div></div></div>",
                              "extraMarkup": "<div class=\"absolute top-1/2 end-3 -translate-y-1/2\"><svg class=\"shrink-0 size-3.5 text-gray-500 dark:text-neutral-500 \" xmlns=\"http://www.w3.org/2000/svg\" width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" fill=\"none\" stroke=\"currentColor\" stroke-width=\"2\" stroke-linecap=\"round\" stroke-linejoin=\"round\"><path d=\"m7 15 5 5 5-5\"/><path d=\"m7 9 5-5 5 5\"/></svg></div>"
                            }' class="hidden">
                        <option value="">Choose</option>
                        <?php
                        $SQL = "SELECT * FROM ICA_Type_Classe";
                        $result = $conn->query($SQL);
                        while ($row = $result->fetch_assoc()) {
                            echo '<option value="'.$row['TYPC_ID'].'">'.$row['TYPC_Libelle'].'</option>';
                        }

                        ?>
                    </select>
                </td>
                <td class="cla_libelle px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                    <input type="text" class="py-3 px-4 block w-full border-gray-200 rounded-lg text-sm focus:border-blue-500 focus:ring-blue-500 disabled:opacity-50 disabled:pointer-events-none dark:bg-neutral-900 dark:border-neutral-700 dark:text-neutral-400 dark:placeholder-neutral-500 dark:focus:ring-neutral-600" placeholder="Libelle">
                </td>
                <td class="heritage px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">

                        <select multiple="" data-hs-select='{
                          "hasSearch": true,
                              "searchPlaceholder": "Heritage ...",
                              "searchClasses": "block w-full text-sm border-gray-200 rounded-lg focus:border-blue-500 focus:ring-blue-500 before:absolute before:inset-0 before:z-[1] dark:bg-neutral-900 dark:border-neutral-700 dark:text-neutral-400 dark:placeholder-neutral-500 py-2 px-3",
                              "searchWrapperClasses": "bg-white p-2 -mx-1 sticky top-0 dark:bg-neutral-900",
"dropdownClasses": "z-[80] w-full max-h-72 p-1 space-y-0.5 bg-white border border-gray-200 rounded-lg overflow-hidden overflow-y-auto [&::-webkit-scrollbar]:w-2 [&::-webkit-scrollbar-thumb]:rounded-full [&::-webkit-scrollbar-track]:bg-gray-100 [&::-webkit-scrollbar-thumb]:bg-gray-300 dark:[&::-webkit-scrollbar-track]:bg-neutral-700 dark:[&::-webkit-scrollbar-thumb]:bg-neutral-500 dark:bg-neutral-900 dark:border-neutral-700",
          "dropdownScope": "window",
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
                        $SQL = "SELECT * FROM ICA_Classe JOIN ICA_Type_Classe USING (TYPC_ID) JOIN ICA_Etude USING (ETU_ID)";
                        $stmt = $conn->prepare($SQL);
                        $stmt->execute();
                        $result = $stmt->get_result();

                        while ($row = $result->fetch_assoc()) {
                            $color = substr(md5($row['CLA_Libelle']), 0, 6);
                            echo '<option value="'.$row['CLA_ID'].'" data-hs-select-option=\'{
    "description": "'.$row['ETU_Libelle'].'",
    "icon": "<img class=\"inline-block rounded-full\" src=\"https://singlecolorimage.com/get/' . $color . '/32x32\" />"
}\'>'.$row['CLA_Libelle'].'</option>';
                        }

                        ?>
                    </select>
                </td>
                <td class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                    <button class="px-2 py-1 bg-green-500 text-white rounded" onclick="addClass(this)">Add</button>
                </td>


            </tr>


            </tbody>
        </table>
    </div>

    <div id="hs-heritage" class="hs-overlay hidden size-full fixed top-0 start-0 z-[80] overflow-x-hidden overflow-y-auto pointer-events-none" role="dialog" tabindex="-1" aria-labelledby="hs-vertically-centered-modal-label">
        <div class="hs-overlay-open:mt-7 hs-overlay-open:opacity-100 hs-overlay-open:duration-500 mt-0 opacity-0 ease-out transition-all sm:max-w-lg sm:w-full m-3 sm:mx-auto min-h-[calc(100%-3.5rem)] flex items-center">
            <div class="w-full flex flex-col bg-white border shadow-sm rounded-xl pointer-events-auto dark:bg-neutral-800 dark:border-neutral-700 dark:shadow-neutral-700/70">
                <div class="flex justify-between items-center py-3 px-4 border-b dark:border-neutral-700">
                    <h3 id="hs-vertically-centered-modal-label" class="font-bold text-gray-800 dark:text-white">
                        View Heritage
                    </h3>
                    <button type="button" class="size-8 inline-flex justify-center items-center gap-x-2 rounded-full border border-transparent bg-gray-100 text-gray-800 hover:bg-gray-200 focus:outline-none focus:bg-gray-200 disabled:opacity-50 disabled:pointer-events-none dark:bg-neutral-700 dark:hover:bg-neutral-600 dark:text-neutral-400 dark:focus:bg-neutral-600" aria-label="Close" data-hs-overlay="#hs-vertically-centered-modal">
                        <span class="sr-only">Close</span>
                        <svg class="shrink-0 size-4" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                            <path d="M18 6 6 18"></path>
                            <path d="m6 6 12 12"></path>
                        </svg>
                    </button>
                </div>
                <div class="p-4 overflow-y-auto">

                    <?php
                    function loopHeritage($heritage) {
                        global $conn;
                        if (is_array($heritage)) {
                            foreach ($heritage as $key => $value) {
                                if (is_array($value)) {
                                    $element = $key;
                                }
                                else {
                                    $element = $value;
                                }
                                $SQL = "SELECT * FROM ICA_Classe WHERE CLA_ID = ?";
                                $stmt = $conn->prepare($SQL);
                                $stmt->bind_param("i", $element);
                                $stmt->execute();
                                $result = $stmt->get_result();
                                $row = $result->fetch_assoc();
                                echo '<div class="ps-7 relative before:absolute before:top-0 before:start-3 before:w-0.5 before:-ms-px before:h-full before:bg-gray-100 dark:before:bg-neutral-700">';
                                echo '<div class="hs-accordion active" role="treeitem" aria-expanded="true" id="hs-cco-tree-heading-one" data-hs-tree-view-item=\'{
                            "value": "'.$row['CLA_Libelle'].'",
    "isDir": true
  }\'>
    <div class="hs-accordion-heading py-0.5 rounded-md flex items-center gap-x-0.5 w-full hs-tree-view-selected:bg-gray-100 dark:hs-tree-view-selected:bg-neutral-700">
      <button class="hs-accordion-toggle size-6 flex justify-center items-center hover:bg-gray-100 rounded-md focus:outline-none focus:bg-gray-100 disabled:opacity-50 disabled:pointer-events-none dark:hover:bg-neutral-700 dark:focus:bg-neutral-700" aria-expanded="true" aria-controls="hs-cco-tree-collapse-one">
        <svg class="size-4 text-gray-800 dark:text-neutral-200" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round">
          <path d="M5 12h14"></path>
          <path class="hs-accordion-active:hidden block" d="M12 5v14"></path>
        </svg>
      </button>

      <div class="grow hs-tree-view-selected:bg-gray-100 dark:hs-tree-view-selected:bg-neutral-700 px-1.5 rounded-md cursor-pointer">
        <div class="flex items-center gap-x-3">
          <svg class="shrink-0 size-4 text-gray-500 dark:text-neutral-500" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round">
            <path d="M20 20a2 2 0 0 0 2-2V8a2 2 0 0 0-2-2h-7.9a2 2 0 0 1-1.69-.9L9.6 3.9A2 2 0 0 0 7.93 3H4a2 2 0 0 0-2 2v13a2 2 0 0 0 2 2Z"></path>
          </svg>
          <div class="grow">
            <span class="text-sm text-gray-800 dark:text-neutral-200">
              '.$row['CLA_Libelle'].'
            </span>
          </div>
        </div>
      </div>
    </div>
    <div id="hs-cco-tree-collapse-one" class="hs-accordion-content w-full overflow-hidden transition-[height] duration-300" role="group" aria-labelledby="hs-cco-tree-heading-one">';
                                loopHeritage($value);
                                echo '</div>';
                                echo '</div>';
                                echo '</div>';
                            }
                        }
                    }
                    echo '<div id="tree-view" class="bg-white rounded p-4 dark:bg-neutral-900" role="tree" aria-orientation="vertical" data-hs-tree-view="">';
                    $SQL2 = "SELECT * FROM ICA_Etude";
                    $stmt2 = $conn->prepare($SQL2);
                    $stmt2->execute();
                    $result2 = $stmt2->get_result();
                    while ($row = $result2->fetch_assoc()) {
                        echo '<div class="hs-accordion active" role="treeitem" aria-expanded="true" id="hs-cco-tree-heading-one" data-hs-tree-view-item=\'{
                            "value": "'.$row['ETU_Libelle'].'",
    "isDir": true
  }\'>
    <div class="hs-accordion-heading py-0.5 rounded-md flex items-center gap-x-0.5 w-full hs-tree-view-selected:bg-gray-100 dark:hs-tree-view-selected:bg-neutral-700">
      <button class="hs-accordion-toggle size-6 flex justify-center items-center hover:bg-gray-100 rounded-md focus:outline-none focus:bg-gray-100 disabled:opacity-50 disabled:pointer-events-none dark:hover:bg-neutral-700 dark:focus:bg-neutral-700" aria-expanded="true" aria-controls="hs-cco-tree-collapse-one">
        <svg class="size-4 text-gray-800 dark:text-neutral-200" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round">
          <path d="M5 12h14"></path>
          <path class="hs-accordion-active:hidden block" d="M12 5v14"></path>
        </svg>
      </button>

      <div class="grow hs-tree-view-selected:bg-gray-100 dark:hs-tree-view-selected:bg-neutral-700 px-1.5 rounded-md cursor-pointer">
        <div class="flex items-center gap-x-3">
          <svg class="shrink-0 size-4 text-gray-500 dark:text-neutral-500" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round">
            <path d="M20 20a2 2 0 0 0 2-2V8a2 2 0 0 0-2-2h-7.9a2 2 0 0 1-1.69-.9L9.6 3.9A2 2 0 0 0 7.93 3H4a2 2 0 0 0-2 2v13a2 2 0 0 0 2 2Z"></path>
          </svg>
          <div class="grow">
            <span class="text-sm text-gray-800 dark:text-neutral-200">
              '.$row['ETU_Libelle'].'
            </span>
          </div>
        </div>
      </div>
    </div>
    <div id="hs-cco-tree-collapse-one" class="hs-accordion-content w-full overflow-hidden transition-[height] duration-300" role="group" aria-labelledby="hs-cco-tree-heading-one">';

                    $SQL = "SELECT * FROM ICA_Classe LEFT JOIN ICA_HERITE USING (CLA_ID) WHERE ANCETRE_CLA_ID is null";
                    $stmt = $conn->prepare($SQL);
                    $stmt->execute();
                    $result = $stmt->get_result();

                    while ($row = $result->fetch_assoc()) {
                        $heritage = getHeritage($row['CLA_ID']);
                        echo '<div class="ps-7 relative before:absolute before:top-0 before:start-3 before:w-0.5 before:-ms-px before:h-full before:bg-gray-100 dark:before:bg-neutral-700">';
                        echo '<div class="hs-accordion active" role="treeitem" aria-expanded="true" id="hs-cco-tree-heading-one" data-hs-tree-view-item=\'{
                            "value": "'.$row['CLA_Libelle'].'",
    "isDir": true
  }\'>
    <div class="hs-accordion-heading py-0.5 rounded-md flex items-center gap-x-0.5 w-full hs-tree-view-selected:bg-gray-100 dark:hs-tree-view-selected:bg-neutral-700">
      <button class="hs-accordion-toggle size-6 flex justify-center items-center hover:bg-gray-100 rounded-md focus:outline-none focus:bg-gray-100 disabled:opacity-50 disabled:pointer-events-none dark:hover:bg-neutral-700 dark:focus:bg-neutral-700" aria-expanded="true" aria-controls="hs-cco-tree-collapse-one">
        <svg class="size-4 text-gray-800 dark:text-neutral-200" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round">
          <path d="M5 12h14"></path>
          <path class="hs-accordion-active:hidden block" d="M12 5v14"></path>
        </svg>
      </button>

      <div class="grow hs-tree-view-selected:bg-gray-100 dark:hs-tree-view-selected:bg-neutral-700 px-1.5 rounded-md cursor-pointer">
        <div class="flex items-center gap-x-3">
          <svg class="shrink-0 size-4 text-gray-500 dark:text-neutral-500" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round">
            <path d="M20 20a2 2 0 0 0 2-2V8a2 2 0 0 0-2-2h-7.9a2 2 0 0 1-1.69-.9L9.6 3.9A2 2 0 0 0 7.93 3H4a2 2 0 0 0-2 2v13a2 2 0 0 0 2 2Z"></path>
          </svg>
          <div class="grow">
            <span class="text-sm text-gray-800 dark:text-neutral-200">
              '.$row['CLA_Libelle'].'
            </span>
          </div>
        </div>
      </div>
    </div>
    <div id="hs-cco-tree-collapse-one" class="hs-accordion-content w-full overflow-hidden transition-[height] duration-300" role="group" aria-labelledby="hs-cco-tree-heading-one">';
                        loopHeritage($heritage);
                        echo '</div>';
                        echo '</div>';
                        echo '</div>';
                    }

                        echo '</div>';
                        echo '</div>';

                    }

                    echo '</div>';
                    ?>

                </div>
                <div class="flex justify-end items-center gap-x-2 py-3 px-4 border-t dark:border-neutral-700">
                    <button type="button" class="py-2 px-3 inline-flex items-center gap-x-2 text-sm font-medium rounded-lg border border-gray-200 bg-white text-gray-800 shadow-sm hover:bg-gray-50 focus:outline-none focus:bg-gray-50 disabled:opacity-50 disabled:pointer-events-none dark:bg-neutral-800 dark:border-neutral-700 dark:text-white dark:hover:bg-neutral-700 dark:focus:bg-neutral-700" data-hs-overlay="#hs-vertically-centered-modal">
                        Close
                    </button>
                </div>
            </div>
        </div>
    </div>

</div>

<script src="/assets/js/class.js"></script>

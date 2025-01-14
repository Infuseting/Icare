<?php
$conn = getConn();
if (!isset($conn)) {
    echo 'Error While loading (You can\' access to this page !)';
    exit();
}

if (!(hasAdminPermission(9)))  {
    Header('Location: /error/401');
    exit();
}


?>
<div class="flex flex-col justify-start m-10">
    <h1 class="pl-5 text-4xl font-semibold text-gray-900 text-start">Salle</h1>
    <p class="pl-5 text-lg text-gray-500 dark:text-gray-400 text-start ">Manage salle</p>
    <hr class="w-full my-10 border-gray-200 dark:border-gray-700">
    <div class="relative max-w-full m-10">
        <table id="User-Table" class="w-full text-sm text-left rounded-lg rtl:text-right text-gray-500 dark:text-gray-400">
            <thead class="text-xs text-gray-700 uppercase bg-gray-50 dark:bg-gray-700 dark:text-gray-400">
            <tr class="table-header">
                <th scope="col" class="px-6 py-3">
                    Salle
                </th>
                <th scope="col" class="px-6 py-3">
                    Batiment
                </th>
                <th scope="col" class="px-6 py-3">
                    Type
                </th>
                <th scope="col" class="px-6 py-3">
                    Utilisable par
                </th>
                <th scope="col" class="px-6 py-3">
                    Actions
                </th>

            </tr>
            </thead>
            <tbody>
                <?php
                    $sql = "SELECT * FROM ICA_Salle JOIN ICA_Batiment USING (BAT_ID) WHERE BAT_ID != 0 order by BAT_ID, SAL_Libelle";
                    $result = $conn->query($sql);
                    while ($row = $result->fetch_assoc()) {
                        echo '<tr class="odd:bg-white odd:dark:bg-gray-900 even:bg-gray-50 even:dark:bg-gray-800 border-b dark:border-gray-700">
                    <th scope="row" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">';
                        echo $row['SAL_Libelle'];
                        echo '</th>';
                        echo '<td class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">';
                        echo $row['BAT_Libelle'];
                        echo '</td>';
                        echo '<td class="Type px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">';
                        echo '<select multiple="" data-hs-select=\'{
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
                      }\' class="hidden">';
                        echo '<option value="">Choose</option>';
                        $SQL2 = "SELECT * FROM ICA_TYPE";
                        $stmt2 = $conn->prepare($SQL2);
                        $stmt2->execute();
                        $result2 = $stmt2->get_result();



                        while ($row2 = $result2->fetch_assoc()) {
                            $SQL3 = "SELECT * FROM ICA_EST_TYPE JOIN ICA_TYPE USING (TYP_ID) WHERE SAL_ID = ? AND TYP_ID = ?";
                            $stmt3 = $conn->prepare($SQL3);
                            $stmt3->bind_param('ii', $row['SAL_ID'], $row2['TYP_ID']);
                            $stmt3->execute();
                            $result3 = $stmt3->get_result();
                            $color = substr(md5($row2['TYP_Libelle']), 0, 6);
                            echo '<option' . ($result3->num_rows != 0 ? ' selected=""' : '') . ' value="' . $row2['TYP_ID'] . '" data-hs-select-option=\'{
    "icon": "<img class=\"inline-block rounded-full\" src=\"https://singlecolorimage.com/get/' . $color . '/32x32\" />"
}\'>'.$row2['TYP_Libelle'].'</option>';
                        }


                        echo '</select>';
                        echo '</td>';
                        echo '<td class="Utilisable px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">';
                        echo '<select multiple="" data-hs-select=\'{
                          "hasSearch": true,
                              "searchPlaceholder": "Utilisable par ...",
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
                      }\' class="hidden">';
                        echo '<option value="">Choose</option>';
                        $SQL2 = "SELECT * FROM ICA_Etude";
                        $stmt2 = $conn->prepare($SQL2);
                        $stmt2->execute();
                        $result2 = $stmt2->get_result();



                        while ($row2 = $result2->fetch_assoc()) {
                            $SQL3 = "SELECT * FROM ICA_Autorise WHERE ETU_ID = ? AND SAL_ID = ?";
                            $stmt3 = $conn->prepare($SQL3);
                            $stmt3->bind_param('ii', $row2['ETU_ID'], $row['SAL_ID']);
                            $stmt3->execute();
                            $result3 = $stmt3->get_result();
                            $color = substr(md5($row2['ETU_Libelle']), 0, 6);

                            echo '<option' . ($result3->num_rows != 0 ? ' selected=""' : '') . ' value="' . $row2['ETU_ID'] . '" data-hs-select-option=\'{
    "icon": "<img class=\"inline-block rounded-full\" src=\"https://singlecolorimage.com/get/' . $color . '/32x32\" />"
}\'>'.$row2['ETU_Libelle'].'</option>';
                        }


                        echo '</select>';
                        echo '</td>';
                        echo '<td class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">';
                        echo '<button class="px-2 py-1 bg-blue-500 text-white rounded" onclick="editSalle(this, ' . $row['SAL_ID'] . ')">Edit</button>';
                        echo '</td>';
                        echo '</tr>';
                    }
                ?>


            </tbody>
        </table>
    </div>

</div>

<script src="/assets/js/salle.js"></script>

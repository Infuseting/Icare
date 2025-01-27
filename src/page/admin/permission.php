<?php
$conn = getConn();
if (!isset($conn)) {
    echo 'Error While loading (You can\' access to this page !)';
    exit();
}

if (!(hasAdminPermission(2) || hasAdminPermission(3) || hasAdminPermission(4) || hasAdminPermission(5)))  {
    Header('Location: /error/401');
    exit();
}
?>

<div class="flex flex-col justify-start m-10">
    <h1 class="pl-5 text-4xl font-semibold text-gray-900 text-start">Permissions</h1>
    <p class="pl-5 text-lg text-gray-500 dark:text-gray-400 text-start ">Manage the permissions of the roles</p>
    <hr class="w-full my-10 border-gray-200 dark:border-gray-700">

    <div class="relative min-h-full max-w-full shadow-md sm:rounded-lg m-10">
        <table class="w-full text-sm text-left rtl:text-right text-gray-500 dark:text-gray-400">
            <thead class="text-xs text-gray-700 uppercase bg-gray-50 dark:bg-gray-700 dark:text-gray-400">
            <tr>
                <th scope="col" class="px-6 py-3">
                    Nom du Role
                </th>
                <?php
                    $SQL = "SELECT * FROM ICA_Permission";
                    $stmt = $conn->prepare($SQL);
                    $stmt->execute();
                    $result = $stmt->get_result();
                    while ($row = $result->fetch_assoc()) {
                        echo '<th scope="col" class="px-6 py-3 bottom-0" >';
                        echo $row['PER_Libelle'];
                        echo '</th>';
                    }
                ?>
                <th scope="col" class="px-6 py-3">
                    Actions
                </th>

            </tr>
            </thead>
            <tbody>
            <?php
                $SQL = "SELECT ROL_ID, ROL_Libelle FROM ICA_Role";
                $stmt = $conn->prepare($SQL);
                $stmt->execute();
                $result = $stmt->get_result();
                while ($row = $result->fetch_assoc()) {
                    echo '<tr class="odd:bg-white odd:dark:bg-gray-900 even:bg-gray-50 even:dark:bg-gray-800 border-b dark:border-gray-700">
                <th scope="row" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">';
                    echo $row['ROL_Libelle'];
                    echo '</th>';
                    $SQL2 = "SELECT * FROM (SELECT PER_ID, PER_Libelle, true as 'Boolean' FROM ICA_Permission JOIN ICA_ROLE_HAS_PERMISSION USING (PER_ID) JOIN ICA_Role USING (ROL_ID) WHERE ROL_ID = ? UNION SELECT PER_ID, PER_Libelle, false as 'Boolean' FROM ICA_Permission WHERE PER_ID NOT IN ( SELECT PER_ID FROM ICA_Permission JOIN ICA_ROLE_HAS_PERMISSION USING (PER_ID) JOIN ICA_Role USING (ROL_ID) WHERE ROL_ID = ? )) as T1 ORDER BY PER_ID";
                    $stmt2 = $conn->prepare($SQL2);
                    $stmt2->bind_param("ii", $row['ROL_ID'], $row['ROL_ID']);
                    $stmt2->execute();
                    $result2 = $stmt2->get_result();
                    while ($row2 = $result2->fetch_assoc()) {
                        echo '<td class="px-6 py-4 text-center">';
                        echo '<input  id="'.$row2["PER_ID"].'" type="checkbox" ' . (hasAdminPermission(3) && hasAdminPermission($row2['PER_ID']) ? "" : "disabled") . ' ' . ($row2['Boolean'] ? 'checked' : '') . '>';
                        echo '</td>';
                    }
                    echo '<td class="px-6 py-4 text-center">';
                    if (hasAdminPermission(3)) {
                        echo '<button class="px-2 py-1 bg-blue-500 text-white rounded" onclick="modifyRole(this, ' . $row['ROL_ID'] . ')">Edit</button>';
                        echo '<button class="px-2 py-1 bg-red-500 text-white rounded ml-2" onclick="deleteRole(this, ' . $row['ROL_ID'] . ')">Delete</button>';
                    }
                    else {
                        echo '<button class="px-2 py-1 bg-blue-500 text-white rounded" disabled>Edit</button>';
                        echo '<button class="px-2 py-1 bg-red-500 text-white rounded ml-2" disabled>Delete</button>';
                    }
                    echo '</td>';
                    echo '</tr>';
                }


            ?>

            <tr class="odd:bg-white odd:dark:bg-gray-900 even:bg-gray-50 even:dark:bg-gray-800 border-b dark:border-gray-700">
                <th scope="row" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                    <input type="text" name="name" class="w-full bg-white dark:bg-gray-900 border dark:border-gray-700">
                </th>
                <?php
                $SQL = "SELECT * FROM ICA_Permission";
                $stmt = $conn->prepare($SQL);
                $stmt->execute();
                $result = $stmt->get_result();
                while ($row = $result->fetch_assoc()) {
                    echo '<td class="px-6 py-4 text-center">';
                    echo '<input id="'.$row["PER_ID"].'" type="checkbox" name="permissions[]" value="'.$row["PER_ID"].'" ' . (hasAdminPermission(3) ? "" : "disabled") . '>';
                    echo '</td>';
                }
                ?>
                <td class="px-6 py-4 text-center">
                    <button onclick="createRole(this)" class="px-2 py-1 bg-green-500 text-white rounded">Add</button>
                </td>
            </tr>


            </tbody>
        </table>
    </div>
    <h1 class="pl-5 text-4xl font-semibold text-gray-900 text-start">Users</h1>
    <p class="pl-5 text-lg text-gray-500 dark:text-gray-400 text-start ">Manage users</p>
    <hr class="w-full my-10 border-gray-200 dark:border-gray-700">

    <div class="relative max-w-full m-10 min-h-full">
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
        </div>
        <table id="User-Table" class="w-full text-sm text-left rounded-lg rtl:text-right text-gray-500 dark:text-gray-400">
            <thead class="text-xs text-gray-700 uppercase bg-gray-50 dark:bg-gray-700 dark:text-gray-400">
            <tr class="table-header">
                <th scope="col" class="px-6 py-3">
                    Name
                </th>
                <th scope="col" class="px-6 py-3">
                    Roles
                </th>
                <th scope="col" class="px-6 py-3">
                    Permissions
                </th>
                <th scope="col" class="px-6 py-3">
                    Actions
                </th>

            </tr>
            </thead>
            <tbody>
            <?php

            $SQL = "SELECT * FROM ICA_User LIMIT 10";
            $stmt = $conn->prepare($SQL);
            $stmt->execute();
            $result = $stmt->get_result();
            while ($row = $result->fetch_assoc()) {
                echo '<tr class="bg-white border-b dark:bg-gray-800 dark:border-gray-700 hover:bg-gray-50 dark:hover:bg-gray-600 '. (isset($row['USERNAME']) ? 'SR-USERNAME-'. $row['USERNAME'] : '') .' '. (isset($row['EMAIL']) ? 'SR-EMAIL-' . $row['EMAIL'] : '') .' SR-UUID-'. $row['USE_UUID'].'">

                <th scope="row" class="w-1/3 flex items-center px-6 py-4 text-gray-900 whitespace-nowrap dark:text-white">';
                echo '<img class="w-10 h-10 rounded-full" src="https://placehold.co/32x32" alt="Photo de profil">';
                echo '<div class="ps-3">';
                echo '<div class="text-base font-semibold">' . (isset($row["USE_NOM"]) ? $row["USE_NOM"] : "Undefined") . '</div>';
                echo '<div class="font-normal text-gray-500">' . (isset($row["USE_EMAIL"]) ? $row["USE_EMAIL"] : "Undefined") . '</div>';
                echo '</div>';
                echo '</th>';
                echo '<td class="px-6 py-4 w-1/3">';
                $SQL2 = "SELECT * FROM (
SELECT ROL_ID, ROL_Libelle, true as 'Boolean'
FROM ICA_Role
JOIN ICA_USER_HAS_ROLE USING (ROL_ID)
WHERE USE_UUID = ?
UNION
SELECT ROL_ID, ROL_Libelle, false as 'Boolean'
FROM ICA_Role
WHERE ROL_ID NOT IN (
    SELECT ROL_ID
    FROM ICA_Role
    JOIN ICA_USER_HAS_ROLE USING (ROL_ID)
    WHERE USE_UUID = ?
)) as T1 ORDER BY ROL_ID;";
                $stmt2 = $conn->prepare($SQL2);
                $stmt2->bind_param("ss", $row['USE_UUID'], $row['USE_UUID']);
                $stmt2->execute();
                $result2 = $stmt2->get_result();

                echo '<select multiple="" data-hs-select=\'{
    "placeholder": "Add role to user",
    "dropdownClasses": "mt-2 z-50 w-full max-h-72 p-1 space-y-0.5 bg-white border border-gray-200 rounded-lg overflow-hidden overflow-y-auto [&::-webkit-scrollbar]:w-2 [&::-webkit-scrollbar-thumb]:rounded-full [&::-webkit-scrollbar-track]:bg-gray-100 [&::-webkit-scrollbar-thumb]:bg-gray-300",
    "optionClasses": "py-2 px-4 w-full text-sm text-gray-800 cursor-pointer hover:bg-gray-100 rounded-lg focus:outline-none focus:bg-gray-100 hs-select-disabled:pointer-events-none hs-select-disabled:opacity-50",
    "mode": "tags",
    "wrapperClasses": "relative ps-0.5 pe-9 min-h-[46px] flex items-center flex-wrap text-nowrap w-full border border-gray-200 rounded-lg text-start text-sm focus:border-blue-500 focus:ring-blue-500 bg-white",
    "tagsItemTemplate": "<div class=\"flex flex-nowrap items-center relative z-10 bg-white border border-gray-200 rounded-full p-1 m-1\" ><div class=\"size-6 me-1\" data-icon></div><div class=\"whitespace-nowrap text-gray-800 \" data-title></div><div class=\"inline-flex shrink-0 justify-center items-center size-5 ms-2 rounded-full text-gray-800 bg-gray-200 hover:bg-gray-300 focus:outline-none focus:ring-2 focus:ring-gray-400 text-sm cursor-pointer\" data-remove><svg class=\"shrink-0 size-3\" xmlns=\"http://www.w3.org/2000/svg\" width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" fill=\"none\" stroke=\"currentColor\" stroke-width=\"2\" stroke-linecap=\"round\" stroke-linejoin=\"round\"><path d=\"M18 6 6 18\"/><path d=\"m6 6 12 12\"/></svg></div></div>",
    "tagsInputId": "hs-tags-input",
    "tagsInputClasses": "py-3 px-2 order-1 border-none text-sm outline-none w-full focus:shadow-none focus:ring-0 focus:border-0 focus:ring-offset-0",
    "optionTemplate": "<div class=\"flex items-center\"><div class=\"size-8 me-2\" data-icon></div><div><div class=\"text-sm font-semibold text-gray-800 \" data-title></div><div class=\"text-xs text-gray-500 \" data-description></div></div><div class=\"ms-auto\"><span class=\"hidden hs-selected:block\"><svg class=\"shrink-0 size-4 text-blue-600\" xmlns=\"http://www.w3.org/2000/svg\" width=\"16\" height=\"16\" fill=\"currentColor\" viewBox=\"0 0 16 16\"><path d=\"M12.736 3.97a.733.733 0 0 1 1.047 0c.286.289.29.756.01 1.05L7.88 12.01a.733.733 0 0 1-1.065.02L3.217 8.384a.757.757 0 0 1 0-1.06.733.733 0 0 1 1.047 0l3.052 3.093 5.4-6.425a.247.247 0 0 1 .02-.022Z\"/></svg></span></div></div>",
    "extraMarkup": "<div class=\"absolute top-1/2 end-3 -translate-y-1/2\"><svg class=\"shrink-0 size-3.5 text-gray-500 \" xmlns=\"http://www.w3.org/2000/svg\" width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" fill=\"none\" stroke=\"currentColor\" stroke-width=\"2\" stroke-linecap=\"round\" stroke-linejoin=\"round\"><path d=\"m7 15 5 5 5-5\"/><path d=\"m7 9 5-5 5 5\"/></svg></div>"
}\' class="hidden">';
                echo '<option value="">Choose</option>';

                while ($row2 = $result2->fetch_assoc()) {
                    $color = substr(md5($row2['ROL_Libelle']), 0, 6);
                    echo '<option ' . ($row2['Boolean'] ? ' selected=""' : '') . ' value=" ' . $row2['ROL_ID'].  ' " data-hs-select-option=\'{
    "icon": "<img class=\"inline-block rounded-full\" src=\"https://singlecolorimage.com/get/'.$color.'/32x32\" />"
}\'>'.$row2['ROL_Libelle'].'</option>';


                }
                echo '</select>';
                echo '</td>';

                echo '<td class="px-6 py-4 w-1/3">';
                $SQL2 = "SELECT * FROM (
SELECT PER_ID, PER_Libelle, true as 'Boolean'
FROM ICA_Permission
         JOIN ICA_USER_HAS_PERMISSION USING (PER_ID)
WHERE USE_UUID = ?
UNION
SELECT PER_ID, PER_Libelle, false as 'Boolean'
FROM ICA_Permission
WHERE PER_ID NOT IN (
    SELECT PER_ID
    FROM ICA_Permission
             JOIN ICA_USER_HAS_PERMISSION USING (PER_ID)
    WHERE USE_UUID = ?
)) as T1 ORDER BY PER_ID";
                $stmt2 = $conn->prepare($SQL2);
                $stmt2->bind_param("ss", $row['USE_UUID'], $row['USE_UUID']);
                $stmt2->execute();
                $result2 = $stmt2->get_result();


                echo '<select multiple="" data-hs-select=\'{
    "placeholder": "Add role to user",
    "dropdownClasses": "mt-2 z-50 w-full max-h-72 p-1 space-y-0.5 bg-white border border-gray-200 rounded-lg overflow-hidden overflow-y-auto [&::-webkit-scrollbar]:w-2 [&::-webkit-scrollbar-thumb]:rounded-full [&::-webkit-scrollbar-track]:bg-gray-100 [&::-webkit-scrollbar-thumb]:bg-gray-300",
    "optionClasses": "py-2 px-4 w-full text-sm text-gray-800 cursor-pointer hover:bg-gray-100 rounded-lg focus:outline-none focus:bg-gray-100 hs-select-disabled:pointer-events-none hs-select-disabled:opacity-50",
    "mode": "tags",
    "wrapperClasses": "relative ps-0.5 pe-9 min-h-[46px] flex items-center flex-wrap text-nowrap w-full border border-gray-200 rounded-lg text-start text-sm focus:border-blue-500 focus:ring-blue-500 bg-white",
    "tagsItemTemplate": "<div class=\"flex flex-nowrap items-center relative z-10 bg-white border border-gray-200 rounded-full p-1 m-1\"><div class=\"size-6 me-1\" data-icon></div><div class=\"whitespace-nowrap text-gray-800 \" data-title></div><div class=\"inline-flex shrink-0 justify-center items-center size-5 ms-2 rounded-full text-gray-800 bg-gray-200 hover:bg-gray-300 focus:outline-none focus:ring-2 focus:ring-gray-400 text-sm cursor-pointer\" data-remove><svg class=\"shrink-0 size-3\" xmlns=\"http://www.w3.org/2000/svg\" width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" fill=\"none\" stroke=\"currentColor\" stroke-width=\"2\" stroke-linecap=\"round\" stroke-linejoin=\"round\"><path d=\"M18 6 6 18\"/><path d=\"m6 6 12 12\"/></svg></div></div>",
    "tagsInputId": "hs-tags-input",
    "tagsInputClasses": "py-3 px-2 order-1 border-none text-sm outline-none w-full focus:shadow-none focus:ring-0 focus:border-0 focus:ring-offset-0",
    "optionTemplate": "<div class=\"flex items-center\"><div class=\"size-8 me-2\" data-icon></div><div><div class=\"text-sm font-semibold text-gray-800 \" data-title></div><div class=\"text-xs text-gray-500 \" data-description></div></div><div class=\"ms-auto\"><span class=\"hidden hs-selected:block\"><svg class=\"shrink-0 size-4 text-blue-600\" xmlns=\"http://www.w3.org/2000/svg\" width=\"16\" height=\"16\" fill=\"currentColor\" viewBox=\"0 0 16 16\"><path d=\"M12.736 3.97a.733.733 0 0 1 1.047 0c.286.289.29.756.01 1.05L7.88 12.01a.733.733 0 0 1-1.065.02L3.217 8.384a.757.757 0 0 1 0-1.06.733.733 0 0 1 1.047 0l3.052 3.093 5.4-6.425a.247.247 0 0 1 .02-.022Z\"/></svg></span></div></div>",
    "extraMarkup": "<div class=\"absolute top-1/2 end-3 -translate-y-1/2\"><svg class=\"shrink-0 size-3.5 text-gray-500 \" xmlns=\"http://www.w3.org/2000/svg\" width=\"24\" height=\"24\" viewBox=\"0 0 24 24\" fill=\"none\" stroke=\"currentColor\" stroke-width=\"2\" stroke-linecap=\"round\" stroke-linejoin=\"round\"><path d=\"m7 15 5 5 5-5\"/><path d=\"m7 9 5-5 5 5\"/></svg></div>"
}\' class="hidden">';
                echo '<option value="">Choose</option>';

                while ($row2 = $result2->fetch_assoc()) {
                    $color = substr(md5($row2['PER_Libelle']), 0, 6);
                    echo '<option ' . ($row2['Boolean'] ? ' selected=""' : '') . ' value=" ' . $row2['PER_ID'].  '" data-hs-select-option=\'{
    "icon": "<img class=\"inline-block rounded-full\" src=\"https://singlecolorimage.com/get/'.$color.'/32x32\" />"
}\'>'.$row2['PER_Libelle'].'</option>';


                }
                echo '</select>';
                echo '</td>';
                echo '<td class="px-6 py-4">';
                echo '<button class="px-2 py-2 bg-blue-500 text-white rounded" onclick="updateUser(this,'.$row["USE_UUID"].')">Update</button>';
               echo '</td>';
                echo '</tr>';
            }
            ?>




            </tbody>
        </table>
    </div>





</div>
<script src="/assets/js/searchBar.js"></script>
<script src="/assets/js/perm.js"></script>
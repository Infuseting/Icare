<?php
$conn = getConn();
if (!isset($conn)) {
    echo 'Error While loading (You can\' access to this page !)';
    exit();
}

if (!(hasAdminPermission(12) || hasAdminPermission(13))) {
    Header('Location: /error/401');
    exit();
}


?>

<div class="flex flex-col justify-start m-10">

    <h1 class="pl-5 text-4xl font-semibold text-gray-900 text-start">Users calendar</h1>
    <p class="pl-5 text-lg text-gray-500 dark:text-gray-400 text-start ">Manage users calendar</p>
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
        </div>
        <table id="User-Table" class="w-full text-sm text-left rounded-lg rtl:text-right text-gray-500 dark:text-gray-400">
            <thead class="text-xs text-gray-700 uppercase bg-gray-50 dark:bg-gray-700 dark:text-gray-400">
            <tr class="table-header">
                <th scope="col" class="px-6 py-3">
                    Name
                </th>
                <th scope="col" class="px-6 py-3">
                    Actions
                </th>

            </tr>
            </thead>
            <tbody>
            <?php

            $SQL = "SELECT * FROM ICA_User";
            $stmt = $conn->prepare($SQL);
            $stmt->execute();
            $result = $stmt->get_result();
            while ($row = $result->fetch_assoc()) {
                echo '<tr class="bg-white border-b dark:bg-gray-800 dark:border-gray-700 hover:bg-gray-50 dark:hover:bg-gray-600 ' . (isset($row['USE_NOM']) ? 'SR-NOM-' . str_replace(" ", "-", $row['USE_NOM']) : '') . ' '. (isset($row['USE_NOM']) ? 'SR-NOM-' . $row['USE_NOM'] : '')   .' '. (isset($row['USE_EMAIL']) ? 'SR-EMAIL-' . $row['USE_EMAIL'] : '') .' SR-UUID-'. $row['USE_UUID'].'">

                <th scope="row" class="w-1/3 flex items-center px-6 py-4 text-gray-900 whitespace-nowrap dark:text-white">';
                echo '<img class="w-10 h-10 rounded-full" src="https://placehold.co/32x32" alt="Photo de profil">';
                echo '<div class="ps-3">';
                echo '<div class="text-base font-semibold">' . (isset($row["USE_NOM"]) ? $row["USE_NOM"] : "Undefined") . '</div>';
                echo '<div class="font-normal text-gray-500">' . (isset($row["USE_EMAIL"]) ? $row["USE_EMAIL"] : "Undefined") . '</div>';
                echo '</div>';
                echo '</th>';
                echo '<td class="px-6 py-4">';
                echo '<button onclick="clipboard(\'https://'.$_SERVER['HTTP_HOST'].'/api/calendar/?id='.$row['USE_UUID'].'\')" type="button" class="btn px-2 py-2 bg-blue-500 text-white rounded">
                    Copy
                  </button>';

                echo '<a class="px-2 py-2 bg-blue-500 text-white rounded" href="/calendar/?id='.$row['USE_UUID'].'">View</a>';
                echo '</td>';
                echo '</tr>';
            }
            ?>




            </tbody>
        </table>
    </div>
</div>

<script src="/assets/js/searchBar.js"></script>
<script src="/assets/js/calendar_admin.js"></script>
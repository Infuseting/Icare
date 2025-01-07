<?php
$conn = getConn();
if (!isset($conn)) {
    echo 'Error While loading (You can\' access to this page !)';
    exit();
}

function hasAdminPermission($id){
    global $conn;
    $sql = "SELECT * FROM ICA_User_Permission WHERE USE_UUID = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("s", $_SESSION['UUID']);
    $stmt->execute();
    $result = $stmt->get_result();
    while ($row = $result->fetch_assoc()) {
        if ($row['PER_ID'] == $id || $row['PER_ID'] == 1) {
            return true;
        }
    }
    return false;
}

?>

<?php
    global $count;
    $count = 0;
    $str = '';
    $str .= '<div class="flex flex-col justify-start items-center   px-6 border-b border-gray-600 w-full  ">
    <button onclick="showMenu(this)"
            class="focus:outline-none focus:text-indigo-400  text-white flex justify-between items-center w-full py-5 space-x-14  ">
        <p class="text-sm leading-5 uppercase">Admin Panel</p>
        <svg id="icon2" class="transform rotate-180" width="24" height="24" viewBox="0 0 24 24" fill="none"
             xmlns="http://www.w3.org/2000/svg">
            <path d="M18 15L12 9L6 15" stroke="currentColor" stroke-width="1.5" stroke-linecap="round"
                  stroke-linejoin="round"/>
        </svg>
    </button>
    <div class="hidden flex justify-start flex-col items-start pb-5 ">';
    if (hasAdminPermission(2) || hasAdminPermission(3) || hasAdminPermission(4) || hasAdminPermission(5)) {
        $str .= '<button class="flex justify-start items-center space-x-6 hover:text-white focus:bg-gray-700 focus:text-white hover:bg-gray-700 text-gray-400 rounded px-3 py-2  w-full md:w-52">
            <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M8 19C10.2091 19 12 17.2091 12 15C12 12.7909 10.2091 11 8 11C5.79086 11 4 12.7909 4 15C4 17.2091 5.79086 19 8 19Z"
                      stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/>
                <path d="M10.85 12.15L19 4" stroke="currentColor" stroke-width="1.5" stroke-linecap="round"
                      stroke-linejoin="round"/>
                <path d="M18 5L20 7" stroke="currentColor" stroke-width="1.5" stroke-linecap="round"
                      stroke-linejoin="round"/>
                <path d="M15 8L17 10" stroke="currentColor" stroke-width="1.5" stroke-linecap="round"
                      stroke-linejoin="round"/>
            </svg>
            <a href="/admin/permission"  class="text-base leading-4  ">Role & Permission</a>
        </button>';
        $count ++;
    }

    $str .= '</div></div>';

    if ($count > 0) {
        echo $str;
    }

?>










<?php
$conn = getConn();
if (!isset($conn)) {
    echo 'Error While loading (You can\' access to this page !)';
    exit();
}

if (!(hasAdminPermission(10)))  {
    Header('Location: /error/401');
    exit();
}
?>

<div class="flex flex-col justify-start m-10">
    <h1 class="pl-5 text-4xl font-semibold text-gray-900 text-start">Batiments</h1>
    <p class="pl-5 text-lg text-gray-500 dark:text-gray-400 text-start ">Manage batiments.</p>
    <hr class="w-full my-10 border-gray-200 dark:border-gray-700">

    <div class="relative max-w-full m-10">
        <table id="User-Table" class="w-full text-sm text-left rounded-lg rtl:text-right text-gray-500 dark:text-gray-400">
            <thead class="text-xs text-gray-700 uppercase bg-gray-50 dark:bg-gray-700 dark:text-gray-400">
            <tr class="table-header">
                <th scope="col" class="px-6 py-3">Batiment</th>
                <?php
                    $SQL = "SELECT * FROM ICA_Batiment  WHERE BAT_ID != 0";
                    $result = $conn->query($SQL);
                    while ($row = $result->fetch_assoc()) {
                        echo '<th scope="col" class="px-6 py-3">';
                        echo $row['BAT_Libelle'];
                        echo '</th>';
                    }

                ?>
            </tr>
            </thead>
            <tbody class="overflow-y-auto ">
                <?php
                    $SQL = "SELECT * FROM ICA_Batiment  WHERE BAT_ID != 0";
                    $result = $conn->query($SQL);
                    while ($row = $result->fetch_assoc()) {

                        $SQL2 = "SELECT * FROM ICA_Batiment WHERE BAT_ID != 0    ";
                        $stmt2 = $conn->prepare($SQL2);
                        $stmt2->execute();
                        $result2 = $stmt2->get_result();
                        echo '<tr class="last:sticky last:bottom-0 odd:bg-white odd:dark:bg-gray-900 even:bg-gray-50 even:dark:bg-gray-800 border-b dark:border-gray-700">';
                        echo '<td class="px-6 py-4 whitespace-nowrap">';
                        echo $row['BAT_Libelle'];
                        echo '</td>';
                        while ($row2 = $result2->fetch_assoc()) {
                            $SQL3 = "SELECT * FROM ICA_Distance WHERE BAT_ID1 = ? AND BAT_ID2 = ?";
                            $stmt3 = $conn->prepare($SQL3);
                            $stmt3->bind_param("ii", $row['BAT_ID'], $row2['BAT_ID']);
                            $stmt3->execute();
                            $result3 = $stmt3->get_result();
                            $row3 = $result3->fetch_assoc();
                            echo '<td class="px-6 py-4 whitespace-nowrap">';
                            if (!($row['BAT_ID'] == $row2['BAT_ID'] || $row['BAT_ID'] < $row2['BAT_ID'])) {
                                echo '<div class="py-2 px-3 bg-white border rounded-lg dark:bg-neutral-900" data-hs-input-number=\'{"max": 300, "min": 0}\'>
  <div class="w-full flex justify-between items-center gap-x-3">
    <div class="relative w-full">
      <input onfocusout="updateDistance(this, '.$row['BAT_ID'].','.$row2['BAT_ID'].')" id="hs-validation-name-error" class="focus:ring-0 focus:border-0 focus:ring-offset-0 focus:shadow-none focus:border-none w-full p-0 pe-7 bg-transparent border-0  bg-white dark:bg-neutral-900  text-gray-800 focus:ring-0 [&::-webkit-inner-spin-button]:appearance-none [&::-webkit-outer-spin-button]:appearance-none dark:text-white" style="-moz-appearance: textfield;" type="number" aria-roledescription="Number field" value="'.(isset($row3['DIS_Temps']) ? $row3['DIS_Temps'] : 0).'" data-hs-input-number-input=\'{"max": 300, "min": 0}\' aria-describedby="hs-input-number-'.$row['BAT_ID'].'-'.$row2['BAT_ID'].'">
      <div class="absolute inset-y-0 end-0 flex items-center pointer-events-none">
        <svg class="shrink-0 size-4 " xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
          <circle cx="12" cy="12" r="10"></circle>
          <line x1="12" x2="12" y1="8" y2="12"></line>
          <line x1="12" x2="12.01" y1="16" y2="16"></line>
        </svg>
      </div>
    </div>
    <div class="flex justify-end items-center gap-x-1.5">
      <button onclick="focusInput(this)" type="button" class="size-6 inline-flex justify-center items-center gap-x-2 text-sm font-medium rounded-full border border-gray-200 bg-white text-gray-800 shadow-sm hover:bg-gray-50 focus:outline-none focus:bg-gray-50 disabled:opacity-50 disabled:pointer-events-none dark:bg-neutral-900 dark:border-neutral-700 dark:text-white dark:hover:bg-neutral-800 dark:focus:bg-neutral-800" tabindex="-1" aria-label="Decrease" data-hs-input-number-decrement="">
        <svg class="shrink-0 size-3.5" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
          <path d="M5 12h14"></path>
        </svg>
      </button>
      <button onclick="focusInput(this)" type="button" class="size-6 inline-flex justify-center items-center gap-x-2 text-sm font-medium rounded-full border border-gray-200 bg-white text-gray-800 shadow-sm hover:bg-gray-50 focus:outline-none focus:bg-gray-50 disabled:opacity-50 disabled:pointer-events-none dark:bg-neutral-900 dark:border-neutral-700 dark:text-white dark:hover:bg-neutral-800 dark:focus:bg-neutral-800" tabindex="-1" aria-label="Increase" data-hs-input-number-increment="">
        <svg class="shrink-0 size-3.5" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
          <path d="M5 12h14"></path>
          <path d="M12 5v14"></path>
        </svg>
      </button>
    </div>
  </div></div>';
                            }
                            

                            echo '</td>';
                        }
                    }
                ?>
            </tbody>
        </table>
    </div>
</div>
<script src="/assets/js/batiments.js"></script>
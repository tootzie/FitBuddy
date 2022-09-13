<?php
ob_start();
session_start();
include "connect.php";

$id = $_SESSION['user_id'];
if(isset($_POST['tanggal'])){
	$tanggal = $_POST['tanggal'];
}else{
	echo "Fail";
}

//FOOD 
$q = mysqli_query($db, "SELECT * FROM detail_makanan WHERE id_user=$id AND tanggal='$tanggal'");
$kalori = 0;
$karbohidrat = 0;
$protein = 0;
$lemak = 0;

while($res = mysqli_fetch_assoc($q)){
	$kalori += $res["total_kal"];
	$karbohidrat += $res["total_karb"];
	$protein += $res["total_prot"];
	$lemak += $res["total_lemak"];
}

//EXERCISE
$exc = mysqli_query($db, "SELECT * FROM detail_exercise WHERE id_user=$id AND tanggal='$tanggal'");
$cal_burned = 0;
while($res = mysqli_fetch_assoc($exc)){
	$cal_burned += $res["cal_burned"];
}

//REMAINING
$remaining = $_SESSION['user_goal'] - $kalori + $cal_burned;

//WEIGHT PREDICTION
$goall = $_SESSION["user_goal"];
$cal_now = $goall - $remaining;
if($cal_now > $goall){
	$sub = $cal_now - $goall;
}else{
	$sub = $goall - $cal_now;	
}
$percent = $sub/$goall;
$selisih = $percent * 0.14;
$selisih = round($selisih,2);

if($remaining != $goall){
	if($remaining < 0){
		$prediction = $_SESSION["user_berat"] + $selisih;
	}else{
		$prediction = $_SESSION["user_berat"] - $selisih;
	}
}else{
	$prediction = $_SESSION["user_berat"];
}
$_SESSION["prediction"] = $prediction;

$arr = array(
            "karbohidrat" => $karbohidrat,
            "kalori" => $kalori,
            "protein" => $protein, 
            "lemak" => $lemak,
            "remaining" => $remaining,
            "cal_burned" => $cal_burned,
            "prediction" => $prediction
       );




// $_SESSION['kalDaily'] = $kalori;
// $_SESSION['karbDaily'] = $karbohidrat;
// $_SESSION['protDaily'] = $protein;
// $_SESSION['lemakDaily'] = $lemak;

echo json_encode($arr);

?>
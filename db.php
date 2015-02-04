<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

$conn = new mysqli("localhost", "robotUser", "robotPassword", "robot");

$result = $conn->query("SELECT xPosition,yPosition,Face FROM SessionDetail");

$outp = "[";
while($rs = $result->fetch_array(MYSQLI_ASSOC)) {
    if ($outp != "[") {$outp .= ",";}
	//$outp .= '{"Position":["'.$rs["xPosition"].'",
    $outp .= '{"Position":["'.$rs["xPosition"].'",'.$rs["YPosition"].'",';
    $outp .= '"Direction":"'. $rs["Face"]     . '"}';
}
$outp .="]";

$conn->close();

echo($outp);
?> 
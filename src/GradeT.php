<?php
session_start();
$con = mysqli_connect("localhost","root","","osers");
if(!$con){
    die('Could not connect:'.mysqli_error());
}
function direct($file){
    header("location:".$file);
}

mysqli_select_db($con,"WG");
$failstart = 0;
$count = 1;
$roll = array();
$roll2 = array();
$arraycount = 0;
$fdnoti = '';
$resultnoti= '';
$realdate = '';
$rn = '';
$name = '';
$top = '';
$tid = 11;
$arraysize = '0';
$arr = array();
$arr2 = array();
$query = "SELECT `TID`, `TName` FROM `TP` WHERE `TID` = 11 ";
$result1 = mysqli_query($con,$query);
$row = mysqli_fetch_assoc($result1);
$start = 0;
if($row){
    $top = $row['TName'];
}else{
    $error = 'Cannot Find Name or Fetch Error';}
if(isset($_POST['home'])){
    direct('homepage.php');

}

$totquery = "SELECT * FROM `TR` WHERE `Ck` = 1 ORDER BY `T` DESC ";
$res = mysqli_query($con,$totquery);
$j = 0;

while($row = mysqli_fetch_array($res)){
    $arr[$j] = $row['T'];
    $j++;
}
 
for($z = 0;$z < sizeof($arr);$z++){
    if($z > 0){
       
        if($arr[$z] == $arr[$z-1]){
            $p = $roll[$z-1];
            $roll[$z] = $p;
        }else{
            $roll[$z] = $z+1;
        }
    }else{
        $roll[$z]=1;
    }
}
$g = 0;
$totquery2 = "SELECT * FROM `TR` WHERE `Ck` = 0 ORDER BY `T` DESC ";
$res2 = mysqli_query($con,$totquery2);
$l = 0;

while($row = mysqli_fetch_array($res2)){
    $arr2[$l] = $row['T'];
    $l++;
}
 $begin = sizeof($arr)+1;
 $arr2[0] = $begin;
for($m = 0;$m < sizeof($arr2);$m++){
   
    if($m > 0){
       
        if($arr2[$m] == $arr2[$m-1]){
            $p = $roll2[$m-1];
            $roll2[$m] = $p;
        }else{
            $roll2[$m] = $begin+$m;
        }
    }else{
       
        $roll2[$m]= $begin;
    }
}
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<meta charset="utf-8">
<html>
<head>       
<link rel="icon" type="image/gif/png" href = "lg.jpg" style="border-radius:50%;">                                                                     
<title> Student Exam Result System</title> 
        <meta http-equiv="x-ua-compatible" content="ie=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway:400,800">
        <link rel='stylesheet' href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="/css/bootstrap.css">
        <link rel="stylesheet" href="/css/style.css">
        <link rel="stylesheet" href="/fontawesome-free-5.4.1-web/css/fontawesome.min.css">
<link rel = "stylesheet" href="mypage.css">  
<style>
        img{
            margin-top:-135px;
            margin-left:-300px;
            border:1px solid black;
        }
        
        </style> 
</head>
<body>
    
        <div id = "wrapper" class="unicode">
            <form action="ViewResult.php" method="post">
        <div id = "header4">
        <h2 style="text-alingn:center;padding-top:5px;">ပညာဂုဏ်ရည်</h2>
        <h2 style="text-align:center;margin-top:-10px;"><?php echo $top;?></h2>
        <h2 style="font-size:19;margin-top:-10px;">ဒသမတန်း</h2><br>
        <div id="l"><a href="ViewResult.php"><image style="border-radius:50%" src = "lg.jpg" alt = "logo" width = "68px" height= "68px"></a></div>
    <table align="center" border="1" width= "100%" cellspacing="0" cellpadding="5" texalign="center">
    <col width = "50">
    <col width = "200">
    <col width = "50">
    <col width = "50">
    <col width = "50">
    <col width = "50">
    <col width = "50">
    <col width = "50">
    <col width = "50">
    <col width = "50">

    <tr style="font-size:18;"><th>စဥ်</th><th>အမည်</th></th><th>မြန်မာ</th><th>အင်္ဂလိပ်</th><th>သင်္ချာ</th><th>ဓါတု</th><th>ရူပ</th><th>ဇီ၀/ဘောဂ</th><th>စုစုပေါင်း</th><th>အဆင့်</th></tr>
    <?php 
        $nroll = '';
        $nroll = mysqli_num_rows(mysqli_query($con,"SELECT * FROM GT"));
        $arraysize = $nroll;
        $q = "SELECT * FROM `TR` WHERE `Ck` = 1 ORDER BY `T` DESC ";
        $result = mysqli_query($con,$q);
        $roll[0]=1;
       
        while($row = mysqli_fetch_array($result)){
            
            $name = $row['Name'];
            $s1 = $row['My'];
            $s2 = $row['E'];
            $s3 = $row['M'];
            $s4 = $row['P'];
            $s5 = $row['C'];
            $s6 = $row['BE'];
            $total = $row['T'];
            
            ?>
            <tr style = "text-align:center">
            <td><?php echo $g+1;?></td>
                <td><strong style="font-size:18;"><?php echo $name;?></strong></td>
                <?php 
                if($s1 < 40){
                    echo '<td style="background-color:lightblue;font-weight:bold;text-decoration:underline;">'.$s1.'</td>';
                }
                else{
                    echo '<td style="background-color:white">'.$s1.'</td>';
                }
                 
                if($s2 < 40){
                    echo '<td style="background-color:lightblue;font-weight:bold;text-decoration:underline;">'.$s2.'</td>';
                }
                else{
                    echo '<td style="background-color:white">'.$s2.'</td>';
                }
                 
                if($s3 < 40){
                    echo '<td style="background-color:lightblue;font-weight:bold;text-decoration:underline;">'.$s3.'</td>';
                }
                else{
                    echo '<td style="background-color:white">'.$s3.'</td>';
                }
                 
                if($s4 < 40){
                    echo '<td style="background-color:lightblue;font-weight:bold;text-decoration:underline;">'.$s4.'</td>';
                }
                else{
                    echo '<td style="background-color:white">'.$s4.'</td>';
                }
                 
                if($s5 < 40){
                    echo '<td style="background-color:lightblue;font-weight:bold;text-decoration:underline;">'.$s5.'</td>';
                }
                else{
                    echo '<td style="background-color:white">'.$s5.'</td>';
                }
                 
                if($s6 < 40){
                    echo '<td style="background-color:lightblue;font-weight:bold;text-decoration:underline;">'.$s6.'</td>';
                }
                else{
                    echo '<td style="background-color:white">'.$s6.'</td>';
                }
                ?>
                
                <td><?php echo $total;?></td>
                <td><?php echo $roll[$g];?></td>
            </tr>

            <?php
               $g++;
        }

        $z = $g+1;
        $g = $g+1;
        $s = 0;
        $q2 = "SELECT * FROM `TR` WHERE `Ck` = 0 ORDER BY `T` DESC ";
        $resultset = mysqli_query($con,$q2);
        while($row = mysqli_fetch_array($resultset)){
            
            $name1 = $row['Name'];
            $s01 = $row['My'];
            $s02 = $row['E'];
            $s03 = $row['M'];
            $s04 = $row['P'];
            $s05 = $row['C'];
            $s06 = $row['BE'];
            $total2 = $row['T'];
            
            ?>
            <tr style = "text-align:center">
            <td><?php echo $z;?></td>
                <td><strong style="font-size:18;"><?php echo $name1;?></strong></td>
                <?php 
                if($s01 < 40){
                    echo '<td style="background-color:lightblue;font-weight:bold;text-decoration:underline;">'.$s01.'</td>';
                }
                else{
                    echo '<td style="background-color:white">'.$s01.'</td>';
                }
                 
                if($s02 < 40){
                    echo '<td style="background-color:lightblue;font-weight:bold;text-decoration:underline;">'.$s02.'</td>';
                }
                else{
                    echo '<td style="background-color:white">'.$s02.'</td>';
                }
                 
                if($s03 < 40){
                    echo '<td style="background-color:lightblue;font-weight:bold;text-decoration:underline;">'.$s03.'</td>';
                }
                else{
                    echo '<td style="background-color:white">'.$s03.'</td>';
                }
                 
                if($s04 < 40){
                    echo '<td style="background-color:lightblue;font-weight:bold;text-decoration:underline;">'.$s04.'</td>';
                }
                else{
                    echo '<td style="background-color:white">'.$s04.'</td>';
                }
                 
                if($s05 < 40){
                    echo '<td style="background-color:lightblue;font-weight:bold;text-decoration:underline;">'.$s05.'</td>';
                }
                else{
                    echo '<td style="background-color:white">'.$s05.'</td>';
                }
                 
                if($s06 < 40){
                    echo '<td style="background-color:lightblue;font-weight:bold;text-decoration:underline;">'.$s06.'</td>';
                }
                else{
                    echo '<td style="background-color:white">'.$s06.'</td>';
                }
                ?>
                
                <td><?php echo $total2;?></td>
                <td><?php echo $roll2[$s];?></td>
            </tr>

            <?php
                $s++;
               $z++;
        }


    ?>
    </table>
        </div>
       

       
</div>
            
</form>
   </div>
         
</body>
</html>

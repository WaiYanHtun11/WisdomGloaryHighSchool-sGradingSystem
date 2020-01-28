<?php
session_start();
$con = mysqli_connect("localhost","root","","WG");
if(!$con){
    die('Could not connect:'.mysqli_error());
}
function direct($file){
    header("location:".$file);
}
if(isset($_POST['setting'])){
    direct('EditResultSheet.php');
}
mysqli_select_db($con,"WG");
$fdnoti = '';
$resultnoti= '';
$realdate = '';
$rn = '';
$name = '';
if(isset($_POST['home'])){
    direct('homepage.php');

}
if(isset($_POST['ed'])){
    direct('EditResultSheet.php');
}
if(isset($_POST['E'])){
    direct('GradeE.php');
}
if(isset($_POST['N'])){
    direct('GradeN.php');
}
if(isset($_POST['T'])){
    direct('GradeT.php');
}
//number of students
$eight = mysqli_num_rows(mysqli_query($con,"SELECT * FROM GE"));
$nine = mysqli_num_rows(mysqli_query($con,"SELECT * FROM GN"));
$ten = mysqli_num_rows(mysqli_query($con,"SELECT * FROM GT"));
//number of average pass
$ep = mysqli_num_rows(mysqli_query($con,"SELECT * FROM ER WHERE Ck = '1'"));
$np = mysqli_num_rows(mysqli_query($con,"SELECT * FROM NR WHERE Ck = '1'"));
$tp = mysqli_num_rows(mysqli_query($con,"SELECT * FROM TR WHERE Ck = '1'"));
//
if($ep!= 0)
$epass = number_format(($ep/$eight)*100,2);
if($np!=0)
$npass = number_format(($np/$nine)*100,2);
if($tp !=0 or $ten != 0 ){
$tpass = number_format(($tp/$ten)*100,2);
}
//Eight Subject pass
$q1 = "SELECT * FROM ER";
$r1 = mysqli_query($con,$q1);
$e1 = 0;
$e2 = 0;
$e3 = 0;
$e4 = 0;
$e5 = 0;
$e6 = 0;
while($row1 = mysqli_fetch_array($r1)){
    if($row1['My'] >= 40)
    $e1++;
    if($row1['E'] >= 40)
    $e2++;
    if($row1['M'] >= 40)
    $e3++;
    if($row1['G'] >= 40)
    $e4++;
    if($row1['H'] >= 40)
    $e5++;
    if($row1['S'] >= 40)
    $e6++;
}
//Grade 9
$q2 = "SELECT * FROM NR";
$r2 = mysqli_query($con,$q2);
$n1 = 0;
$n2 = 0;
$n3 = 0;
$n4 = 0;
$n5 = 0;
$n6 = 0;
while($row2 = mysqli_fetch_array($r2)){
    if($row2['My'] >= 40)
    $n1++;
    if($row2['E'] >= 40)
    $n2++;
    if($row2['M'] >= 40)
    $n3++;
    if($row2['P'] >= 40)
    $n4++;
    if($row2['C'] >= 40)
    $n5++;
    if($row2['BE'] >= 40)
    $n6++;
}
//Grade 10
$q3 = "SELECT * FROM TR";
$r3 = mysqli_query($con,$q3);
$t1 = 0;
$t2 = 0;
$t3 = 0;
$t4 = 0;
$t5 = 0;
$t6 = 0;
while($row3 = mysqli_fetch_array($r3)){
    if($row3['My'] >= 40)
    $t1++;
    if($row3['E'] >= 40)
    $t2++;
    if($row3['M'] >= 40)
    $t3++;
    if($row3['P'] >= 40)
    $t4++;
    if($row3['C'] >= 40)
    $t5++;
    if($row3['BE'] >= 40)
    $t6++;
}
//eight each sub pass
$s01 = number_format(($e1/$eight)*100,2);
$s02 = number_format(($e2/$eight)*100,2); 
$s03 = number_format(($e3/$eight)*100,2); 
$s04 = number_format(($e4/$eight)*100,2); 
$s05 = number_format(($e5/$eight)*100,2); 
$s06 = number_format(($e6/$eight)*100,2); 
$s11 = number_format(($n1/$nine)*100,2); 
$s12 = number_format(($n2/$nine)*100,2); 
$s13 = number_format(($n3/$nine)*100,2); 
$s14 = number_format(($n4/$nine)*100,2); 
$s15 = number_format(($n5/$nine)*100,2); 
$s16 = number_format(($n6/$nine)*100,2); 
$s21 = number_format(($t1/$ten)*100,2); 
$s22 = number_format(($t2/$ten)*100,2); 
$s23 = number_format(($t3/$ten)*100,2); 
$s24 = number_format(($t4/$ten)*100,2); 
$s25 = number_format(($t5/$ten)*100,2); 
$s26 = number_format(($t6/$ten)*100,2); 
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<meta charset="utf-8">
<html>
<head>       
<link rel="icon" type="image/gif/png" href = "lg.jpg" style="border-radius:50%;">                                                                     
<title>Online Student Exam Result System</title> 
        <meta http-equiv="x-ua-compatible" content="ie=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" href='https://mmwebfonts.comquas.com/fonts/?font=myanmar3' />
    	<link rel="stylesheet" href='https://mmwebfonts.comquas.com/fonts/?font=zawgyi' />
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway:400,800">
        <link rel='stylesheet' href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="/css/bootstrap.css">
        <link rel="stylesheet" href="/css/style.css">
        <link rel="stylesheet" href="/fontawesome-free-5.4.1-web/css/fontawesome.min.css">
<link rel = "stylesheet" href="mypage.css">  
<style>
        img{
            border-radius:50%;
            margin-left:150px;
            float:left;
            margin-top:0px;
        }
        
        .zawgyi{
			font-family:Zawgyi-One;
		}
		.unicode{
			font-family:Myanmar3,Yunghkio,'Masterpiece Uni Sans';
		}
        
        </style> 
</head>
<body>
    
        <div id = "wrapper" class="unicode">
            <form action="ViewResult.php" method="post">
            
            <button type="submit" style=" width:100px;
            height:30px;
            border-radius:2em;
            margin-top:28px;
            float:right;
            margin-right:20px;" name="home">Home</button>
            <a href="EditResultSheet.php"><button type="submit" name="setting" style = "width:100px;height:30px;border-radius:2em;margin-top:30px;float:right;margin-right:20px;">Setting</button></a>
        <div id = "header2"><image src = "lg.jpg" alt = "logo" width = "68px" height= "68px">
        <h1>Wisdom Glory - Education Center</h1>
        </div>
      
       
        <div id="choice">
            <button type="submit" style="width:150px;float:center;border-radius:2em;" name="E">Standard-(8)</button>
            <button type="submit" style="width:150px;float:center;border-radius:2em;" name="N">Standard-(9)</button>
            <button type="submit" style="width:150px;float:center;border-radius:2em;" name="T">Standard-(10)</button>
        </div>
        <table align="center" border="0" width= "90%" cellspacing= "0" style="margin-top:50px;border-radius:1em;background-color:lightyellow;">
        <tr>
            <td>
            <table border=".5" width="90%" cellspacing="0" caption="Pass Percentage" align = "center" style="font-weight:bold;background-color:lightskyblue;border-radius:.6em;">
            <caption>Standard-(8) Pass(<?php echo $epass;?>%)</caption>
            <tr style="text-align:center;"><td>မြန်မာ</td><td><?php echo $s01;?>%</td></tr>
            <tr style="text-align:center;"><td>အင်္ဂလိပ်</td><td><?php echo $s02;?>%</td></tr>
            <tr style="text-align:center;"><td>သင်္ချာ</td><td><?php echo $s03;?>%</td></tr>
            <tr style="text-align:center;"><td>ပထ၀ီ	</td><td><?php echo $s04;?>%</td></tr>
            <tr style="text-align:center;"><td>သမိုင်း</td><td><?php echo $s05;?>%</td></tr>
            <tr style="text-align:center;"><td>သိပ္ပံ</td><td><?php echo $s06;?>%</td></tr>
            </table>
            </td>
            <td>
            <table border=".5" width="90%" cellspacing="0" caption="Pass Percentage" align = "center" style="font-weight:bold;background-color:lightskyblue;border-radius:.6em;" >
            <caption>Standard-(9) Pass(<?php echo $npass;?>%)</caption>
            <tr style="text-align:center;"><td>မြန်မာ</td><td><?php echo $s11;?>%</td></tr>
            <tr style="text-align:center;"><td>အင်္ဂလိပ်</td><td><?php echo $s12;?>%</td></tr>
            <tr style="text-align:center;"><td>သင်္ချာ</td><td><?php echo $s13;?>%</td></tr>
            <tr style="text-align:center;"><td>ဓါတု</td><td><?php echo $s14;?>%</td></tr>
            <tr style="text-align:center;"><td>ရူပ</td><td><?php echo $s15;?>%</td></tr>
            <tr style="text-align:center;"><td>ဇီ၀၊ဘောဂ</td><td><?php echo $s16;?>%</td></tr>
            </table>
            </td>
            <td>
            <table border=".5" width="90%" cellspacing="0" caption="Pass Percentage" align = "center" style="font-weight:bold;background-color:lightskyblue;border-radius:.6em;">
            <caption>Standard-(10)  Pass(<?php echo $tpass;?>%)</caption>
            <tr style="text-align:center;"><td>မြန်မာ</td><td><?php echo $s21;?>%</td></tr>
            <tr style="text-align:center;"><td>အင်္ဂလိပ်</td><td><?php echo $s22;?>%</td></tr>
            <tr style="text-align:center;"><td>သင်္ချာ</td><td><?php echo $s23;?>%</td></tr>
            <tr style="text-align:center;"><td>ဓါတု</td><td><?php echo $s24;?>%</td></tr>
            <tr style="text-align:center;"><td>ရူပ</td><td><?php echo $s25;?>%</td></tr>
            <tr style="text-align:center;"><td>ဇီ၀၊ဘောဂ</td><td><?php echo $s26;?>%</td></tr>
            </table>
            </td>
        </tr>
        </table>

       
</div>
            
</form>
   </div>
         
</body>
</html>

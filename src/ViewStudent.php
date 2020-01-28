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
if(isset($_POST['go'])){
    direct('InsertStudent.php');
}
$eight = '';
$nine = '';
$ten = '';

$result= mysqli_query($con,"SELECT * FROM GE");
$eight=mysqli_num_rows($result);
$nine = mysqli_num_rows(mysqli_query($con,"SELECT * FROM GN"));
$ten = mysqli_num_rows(mysqli_query($con,"SELECT * FROM GT"));
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<meta charset="utf-8">
<html>
<head>       
<link rel="icon" type="image/gif/png" href = "lg.jpg" style="border-radius:50%;">                                                                     
<title>Online Student Exam Result System</title> 
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
            border-radius:50%;
            margin-left:150px;
            float:left;
            margin-top:0px;
        }
        button{
            width:100px;
            height:30px;
            border-radius:2em;
            margin-top:25px;
            float:right;
            margin-right:20px;
            

        }
        </style> 
</head>
<body>
    
        <div id = "wrapper" class="unicode">
            <form action="ViewStudent.php" method="post">
            
           
            <button type="submit" name="home">Home</button>
            <button type="submit" name="ed">Setting</button>
            <button type="submit" name="go" style="width:150px;">Add Student</button>
        <div id = "header2"><div id="total"><strong>Total</strong><br>
        <?php echo $eight + $nine + $ten;?>   </div> 
        <image src = "lg.jpg" alt = "logo" width = "68px" height= "68px">
        <h1>Wisdom Glory - Education Center</h1>
            


        
        </div>
    </form>
        <div id="mp2" class = "unicode">
        <table border = "0" cellspacing="20px" cellpadding="5px" width = "100%" align = "center" height="500px">
       <tr><td><div id = "pane1">
            <h1 id="tit">
                Standard Eight-(<?php echo $eight;?>)
            </h1>
            <div id="box">
                <table border = "0" width = "85%" cellspacing = "10" cellpadding = "5" align = "center">
                    <tr><th>Roll_No</th><th>Name</th></tr>
                    <?php
                    $result = mysqli_query($con,"SELECT * FROM GE");
                    while($row = mysqli_fetch_array($result)){
                       $rn = $row['RN'];
                        $name = $row['Name'];
                    ?>
                    <tr><td><h4><?php echo $rn;?></h4></td><td><h4><?php echo $name = $row['Name'];?></h4></td></tr>
                    <?php } ?>                    
                    
                </table>
            </div>
        </div></td><td>
        <div id = "pane2">
            <h1 id="tit">
                Standard Nine-(<?php echo $nine;?>)
            </h1>
            <div id="box">
            <table border = "0" width = "85%" cellspacing = "10" cellpadding = "5" align = "center">
                    <col width="50">
                    <col width="200">
                    <tr><th>Roll_No</th><th>Name</th></tr>
                    <?php
                    $result = mysqli_query($con,"SELECT * FROM GN");
                    while($row = mysqli_fetch_array($result)){
                        $rn = $row['RN'];
                        $name = $row['Name'];
                    ?>
                    <tr style="margin-left:5px;"><td><h4><?php echo $rn;?></h4></td><td><h4><?php echo $name = $row['Name'];?></h4></td></tr>
                    <?php } ?>                    
                    
             </table>
                
            </div>
        </div></td><td>
        <div id = "pane3">
            <h1 id="tit">
                Standard Ten-(<?php echo $ten;?>)
            </h1>
                <div id="box">
            <table border = "0" width = "85%" cellspacing = "10" cellpadding = "5" align = "center">
                    <tr><th>Roll_No</th><th>Name</th></tr>
                    <?php
                    $result = mysqli_query($con,"SELECT * FROM GT");
                    while($row = mysqli_fetch_array($result)){
                        $rn = $row['RN'];
                        $name = $row['Name'];
                    ?>
                    <tr><td><h4><?php echo $rn;?></h4></td><td><h4><?php echo $name = $row['Name'];?></h4></td></tr>
                    <?php } ?>                    
                    
                 </table>
                
                </div>
            </div></td></tr></table>
         </div>
            
        </div>
         
</body>
</html>

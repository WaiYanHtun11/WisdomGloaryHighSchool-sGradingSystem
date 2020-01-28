<?php
session_start();
function direct($file){
    header("location:".$file);
}
$con = mysqli_connect("localhost","root","","osers");
if(!$con){
    die('Could not connect:'.mysqli_error());
}
function sum($s1,$s2,$s3,$s4,$s5,$s6,$con){
    return $s1+$s3+$s3+$s4+$s5+$s6;
}
if(isset($_POST['home'])){
    direct('homepage.php');

}
if(isset($_POST['vs'])){
    direct('ViewStudent.php');
}
if(isset($_POST['vr'])){
    direct('ViewResult.php');
}
mysqli_select_db($con,"WG");
$error = '';
if(isset($_POST['ro'])){
    if(!empty($_POST['ns'])){
        $r = $_POST['ns'];
            $len = strlen((string)$r);
            if($len == 1){
                $r = '0'.$r;
            }
    $tn = 'G'.$_POST['grade'];
    $sid = $tn.$r;
    $query = "DELETE FROM `$tn` WHERE `$tn`.`RN` = '$sid'";
    $result = mysqli_query($con,$query);
    $std = '';
    switch($tn){
        case 'GE':$std="Grade Eight";break;
        case 'GN':$std="Grade Nine";break;
        case 'GT':$std="Grade Ten";break;
        default:break;
    }
    if($result){
        $error = "Student With Roll Number( ".$sid." )have removed from ".$std;
    }
    else $error= 'error';
}
}
if(isset($_POST['ra'])){
    $tn = 'G'.$_POST['grade'];
    $query = "DELETE FROM `$tn`";
    $result = mysqli_query($con,$query);
    $std = '';
    switch($tn){
        case 'GE':$std="Grade Eight";break;
        case 'GN':$std="Grade Nine";break;
        case 'GT':$std="Grade Ten";break;
        default:break;
    }
    if($result){
        $error = "All Students From ".$std."Have remove all";
    }
    else{
        $error = "error";
    }
}
if(isset($_POST['subtop'])){
    $top = $_POST['topic'];
    if(!empty($top)){
        $query = "UPDATE `TP` SET `TName`='$top' WHERE `TID` = 11";
        $result= mysqli_query($con,$query);
        if($result){
            $error = "Your topic of exam have set to( ".$top." )";
        }
        else{
            $error = 'error';
        }

    }
}
if(isset($_POST['delone'])){
    $r = $_POST['ns'];
            $len = strlen((string)$r);
            if($len == 1){
                $r = '0'.$r;
            }
    $tab = $_POST['grade'].'R';
    $sid = 'G'.$_POST['grade'].$r;
    $std = '';
    switch($tab){
        case 'ER':$std="Grade Eight Table";break;
        case 'NR':$std="Grade Nine Table";break;
        case 'TR':$std="Grade Ten Table" ;break;
        default:break;
    }
    if(!empty($_POST['ns'])){
        $query = "DELETE FROM `$tab` WHERE `$tab`.`RN` = '$sid'";
        $result = mysqli_query($con,$query);
        if($result){
            $error = "Student With Roll Number( ".$sid." )have removed from ".$std;
        }
        else $error= 'error';
    }
}
if(isset($_POST['delall'])){
    $tab = $_POST['grade'].'R';
    $std = '';
    switch($tab){
        case 'ER':$std="Grade Eight Table";break;
        case 'NR':$std="Grade Nine Table";break;
        case 'TR':$std="Grade Ten Table" ;break;
        default:break;
    }
    $query = "DELETE FROM `$tab`";
    $result = mysqli_query($con,$query);
    if($result){
        $error = "All Students From ".$std." Table Have remove all";
    }
    else{
        $error = "error";
    }

}
if(isset($_POST['subname'])){
    $na = $_POST['topic'];
    $tb = 'G'.$_POST['grade'];
    $r = $_POST['ns'];
            $len = strlen((string)$r);
            if($len == 1){
                $r = '0'.$r;
            }
        $sid = $tb.$r;
    $sql = "UPDATE `$tb` SET `Name`= '$na' WHERE `RN`='$sid'";
    if(!empty($na)){
        $result = mysqli_query($con,$sql);
        if($result){
            $error = "You Student's name have changed to ".$na;
        }
        else{
            $error = "error";
        }
    }

}
if(isset($_POST['subnr'])){
    $na = $_POST['topic'];
    $tb = $_POST['grade'].'R';
    $r = $_POST['ns'];
            $len = strlen((string)$r);
            if($len == 1){
                $r = '0'.$r;
            }
        $sid = 'G'.$_POST['grade'].$r;
    $sql = "UPDATE `$tb` SET `Name`= '$na' WHERE `RN`='$sid'";
    if(!empty($na)){
        $result = mysqli_query($con,$sql);
        if($result){
            $error = "You Student's name have changed to ".$na;
        }
        else{
            $error = "error";
        }
    }

}
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
        <style>
        img{
            border-radius:50%;
            margin-left:150px;
            float:left;
            margin-top:-13px;
        }
        textarea{
            border-radius:1em;
            border:0 solid white;
            padding:3px 0 3px 5px;
        }
        p{
            font-size:14;
            font-style:italic;
            font-weight:bold;
        }
        button{
            border-radius:2em;
        }
       
        </style>
<link rel = "stylesheet" href="mypage.css">   
</head>
<body>

        <div id = "wrapper">
        <form action="EditResultSheet.php" method="post">
            <button type="submit" name="home" style = "width:100px;height:30px;border-radius:2em;margin-top:20px;float:right;margin-right:20px;">Home</button>
            <button type="submit" name="vs" style = "width:100px;height:30px;border-radius:2em;margin-top:20px;float:right;margin-right:20px;">Stduents</button>
            <button type="submit" name="vr" style = "width:100px;height:30px;border-radius:2em;margin-top:20px;float:right;margin-right:20px;">Results</button>
        <div id = "header3"> <image src = "lg.jpg" alt = "logo" width = "68px" height= "68px">  
      
        <strong style = "font-size:20;">Choose Standard:</strong>
                <?php 

                    if(isset($_POST['delone']) || isset($_POST['delall']) || isset($_POST['ro']) || isset($_POST['ra']) ){
                        if($_POST['grade'] == 'N'){
                        ?>
                        <input type="Radio" name="grade" value="E" >Eight: 
					    <input type="Radio" name="grade" value = "N" checked >Nine: 
                        <input type="Radio" name="grade" value="T" >Ten:
                        <?php
                      }elseif($_POST['grade']== 'T'){
                        ?>
                        <input type="Radio" name="grade" value="E">Eight: 
					    <input type="Radio" name="grade" value = "N" >Nine: 
                        <input type="Radio" name="grade" value="T" checked >Ten:
                         <?php
                        }else{
                        ?>
                         <input type="Radio" name="grade" value="E" checked>Eight: 
				    	<input type="Radio" name="grade" value = "N" >Nine: 
                              <input type="Radio" name="grade" value="T" >Ten:

                        <?php
                    }
                }else{

                    ?>
                    <input type="Radio" name="grade" value="E" checked>Eight: 
				    	<input type="Radio" name="grade" value = "N" >Nine: 
                              <input type="Radio" name="grade" value="T" >Ten:

                        
                    <?php
                }


                ?>
                    
				   
                   <strong>Roll Number: </strong><input type="number" placeholder="00.00" min="1" max="99" maxlegth="2" name="ns"> 
                    
                    <div id = "error"><?php echo $error;?></div>
        </div>
         
        <div id="mp3">
        <div id="imagepane">
        <button type="submit" name="delone" value="Delete one" onclick = "return confirm('Are you sure you want to delete the selected student record?');">Remove one Result</button>
        <button type="submit" name="delall" value="Delete All" onclick = "return confirm('Important!:_)Are you sure you want to delete all the records?This will clean all the records!');">Remove all Result</button>
        
        <h2 style="font-size:18;font-weight:bold;">Type Your Title For The Result Sheet</h2>
        <textarea name = "topic" placeholder="topic or name goes here" rows="3" cols="50"></textarea><br><br>
        <button type="submit" name="subtop" onclick = "return confirm('Are you sure you want to Submit the topic of exam sheet?');">Submit Topic</button>
        <button type="submit" name="subname" onclick = "return confirm('Are you sure you want to change the student\'s name ');">Change Name in Student</button>
        <button type="submit" name="subnr" onclick = "return confirm('Are you sure you want to change the student\'s name ');">Change Name in Result Sheet</button>
        <br><br>
        <h2 style="font-size:18;font-weight:bold;">Delete the student's exam record</h2>
        <p>This is the place where you all edit the exam sheet if there is something wrong with input marks.You can delete the exam-record of a student and you can also delete all of the records for each standard to have a new records.
            You can also set the title for the exam sheet!</p>
            <h4  style="font-size:18;font-weight:bold">Delete The Student Record</h2>
            <p>Choose the Standard & Roll Number of a Student to remove from the system and tab remove this student.To remove all the student,choose standard only and tab the remove all button</p>
    </div>
    <div id="header3">
        <button type="submit" name = "ro" onclick="return confirm('Are you sure to remove!')">Remove This Student</button>
        <button type="submit" name = "ra" onclick="return confirm('Important!:_)Are you sure to remove All Student!This will clean all the records!')">Remove All Student</button>
    </div>
    <div id="wisdom">
    </div>
            
           
       
            
        </div>
        </div>
</form>
         
</body>
</html>

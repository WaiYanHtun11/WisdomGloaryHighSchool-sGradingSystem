<?php
session_start();
$con = mysqli_connect("localhost","root","","osers");
if(!$con){
    die('Could not connect:'.mysqli_error());
}
function sum($s1,$s2,$s3,$s4,$s5,$s6,$con){
    return $s1+$s3+$s3+$s4+$s5+$s6;
}
function direct($file){
    header("location:".$file);
}
if(isset($_POST['go'])){
    direct('ViewResult.php');
}
mysqli_select_db($con,"WG");
$number = '';
$insertnum = 0;
$num2 = 0;
$standard = '';
$gd = '';
$error = '';
if(isset($_POST['sub'])){
    $gd = $_POST['grade'];
    echo $gd;
    echo $_SESSION['ns'];
 for($j = 0 ;$j < $_SESSION['ns'] ;$j++ ){
     $check = true;
     
     $s1 = $_POST['One'.$j];
     $s2 = $_POST['Two'.$j];
     $s3 = $_POST['Thr'.$j];
     $s4 = $_POST['For'.$j];
     $s5 = $_POST['Fiv'.$j];
     $s6 = $_POST['Six'.$j];

    if($s1 < 40 || $s2 < 40 || $s3 < 40 || $s4 < 40 || $s5 < 40 || $s6 < 40){
        $check = false;
    }

     if(empty($s1)|| empty($s2) || empty($s3) || empty($s4) || empty($s5) || empty($s6)){
         $error = "empty value";break;
     }
     $tot = $s1+$s2+$s3+$s4+$s5+$s6;
     $nm = '';
     $query = '';
     $main = '';
     $rn = '';
     if($gd == 'E'){
        $r = $_POST['S'.$j];
        if(strlen((String)$r) == 1){
            $r= '0'.$_POST['S'.$j];
        }

         $rn = 'GE'.$r;
         $query = "SELECT `Name` FROM `GE` WHERE `RN` = '$rn'";
         $result1 = mysqli_query($con,$query);
         $row = mysqli_fetch_assoc($result1);
         if($row){
             $nm = $row['Name'];
         }else{
             $error = 'Cannot Find Name or Fetch Error';}
         
       
      $main = "INSERT INTO `ER`(`RN`, `Name`, `My`, `E`, `M`, `G`, `H`, `S`, `T`,`Ck`) VALUES ('$rn','$nm','$s1','$s2','$s3','$s4','$s5','$s6','$tot','$check')";
     }elseif($gd == 'N'){
        $r = $_POST['S'.$j];
        
        if(strlen((String)$r) == 1){
            $r= '0'.$_POST['S'.$j];
        }
        
         $rn = 'GN'.$r;
       
         $query = "SELECT `Name` FROM `GN` WHERE `RN` = '$rn'";
         $result1 = mysqli_query($con,$query);
         $row = mysqli_fetch_assoc($result1);
         if($row){
             $nm = $row['Name'];
         }else{
             $error = 'Cannot Find Name or Fetch Error';}
       
            $main = "INSERT INTO `NR` (`RN`, `Name`, `My`, `E`, `M`, `P`, `C`, `BE`, `T`,`Ck`) VALUES ('$rn', '$nm', '$s1', '$s2', '$s3', '$s4', '$s5', '$s6','$tot','$check')";
     }else{
        $r = $_POST['S'.$j];
        if(strlen((String)$r) == 1){
            $r= '0'.$_POST['S'.$j];
        }
        
         $rn = 'GT'.$r;
         $query = "SELECT `Name` FROM `GT` WHERE `RN` = '$rn'";
         $result1 = mysqli_query($con,$query);
         $row = mysqli_fetch_assoc($result1);
         if($row){
             $nm = $row['Name'];
         }else{
             $error = 'Cannot Find Name or Fetch Error';}
         
     $main = "INSERT INTO `TR` (`RN`, `Name`, `My`, `E`, `M`, `P`, `C`, `BE`, `T`,`Ck`) VALUES ('$rn', '$nm', '$s1', '$s2', '$s3', '$s4', '$s5', '$s6', '$tot','$check')";
     }
    
     $result2 = mysqli_query($con,$main);
     if($result2){
         
          $error = 'Your Students have recorded';
     }else{
         $error =  'insert error';
     }
 }

}
if(isset($_POST['home'])){
    direct('homepage.php');

}
if(isset($_POST['clear'])){
    $number = 0;
}
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<meta charset="utf-8">
<html>
<head>
<form method = "post" action = "InsertResult.php">
<a href="homepage.php"><button type="submit" name="home" style = "width:100px;height:30px;border-radius:2em;margin-top:25px;float:right;margin-right:20px;">Home</button></a>
<button type="submit" name="go"  style = "width:120px;height:30px;border-radius:2em;margin-top:25px;float:right;margin-right:20px;" >View Results</button>
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
        </style>
<link rel = "stylesheet" href="mypage.css">   
</head>
<body>

        <div id = "wrapper" class="unicode">
        <div id = "header3"> <image src = "lg.jpg" alt = "logo" width = "68px" height= "68px">  
       
        <strong style = "font-size:20;">Choose Standard:</strong>
                <?php 

                    if(isset($_POST['getstart']) || isset($_POST['sub'])){
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
                    
				   
                   <input type="number" placeholder="number of students" min="1" max="15" maxlegth="2" name="ns"> 
                    <button type="submit" name="getstart"  onclick = "return confirm('Are you sure you want to getting start your student records?');" style="border-radius:2em;">Starting Record</button>
                    <div id = "error"><?php echo $error;?></div>
        </div>
         
        <div id="mp2">
        
            <?php
                if(isset($_POST['getstart'])){
                    $number = $_POST['ns'];
                    echo '<table border = "0" width = "85%" cellspacing = "0" cellpadding = "5" align = "center">';
                   if($_POST['grade']=='E'){
                       echo '<tr><th>Roll_No</th><th>Myanmar</th><th>'.'English</th><th>Maths</th><th>Geography</th><th>History</th><th>Science</th>';
                   }else{
                    echo '<tr><th>Roll_No</th><th>Myanmar</th><th>English</th><th>Maths</th><th>Chemistry</th><th>Physics</th><th>Bio/Eco</th>';
                   }
                echo '</table>';
                echo '<hr/>';                   
                 echo '<table border = "0" width = "85%" cellspacing = "25" cellpadding = "5" align = "center">';
                         if(!empty($number)){
                            $_SESSION['ns'] = $number;
                            $insertnum = $number;
                            for($i = 0;$i<$number;$i++){
                                

                                
                                    ?>
                             <tr>
                                <td><input type = "text" name = "S<?php echo $i;  ?>"  maxlength="2" size="7"   pattern = "[0-9]{}"       placeholder= "00"></td>
                                <td><input type = "text" name = "One<?php echo $i; ?>" maxlength= "3" size="7"  pattern = "[0-9]{1,}"       placeholder= "0000"></td>
                                <td><input type = "text" name = "Two<?php echo $i; ?>"  maxlength = "3" size="7" pattern = "[0-9]{1,}"      placeholder= "0000"></td>
                                <td><input type = "text" name = "Thr<?php echo $i; ?>"  maxlength = "3" size="7" pattern = "[0-9]{1,}"      placeholder= "0000"></td>
                                <td><input type = "text" name = "For<?php echo $i; ?>"  maxlength = "3" size="7" pattern = "[0-9]{1,}"      placeholder= "0000"></td>
                            <td><input type = "text" name = "Fiv<?php echo $i; ?>"  maxlength = "3" size="7" pattern = "[0-9]{1,}"      placeholder= "0000"></td>
                                <td><input type = "text" name = "Six<?php echo $i; ?>"  maxlength = "3" size="7" pattern = "[0-9]{1,}"      placeholder= "0000"></td>
                            </tr>
                               
                                
                          <?php  }

                                ?>

                                <tr><td></td><td></td><td></td><td>
                                    </td><td></td><td></td><td><button  type = "submit" name = "sub" value = "Submit"onclick = "return confirm('Are you sure all records are correct before submit?');" style="border-radius:2em;">Submit</button></td>
                                    </tr> 
                                <?php

                         }

                         //for the input records
                         
                         //for the input records
                         

                }
                

            
            
            ?>
           
       
            
        </div>
        </div>
</form>
         
</body>
</html>
<?php 

?>

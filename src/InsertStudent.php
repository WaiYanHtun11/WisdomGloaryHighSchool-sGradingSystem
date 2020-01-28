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
mysqli_select_db($con,"WG");
$number = 0;
$insertnum = 0;
$num2 = 0;
$standard = '';
$grad = '';
$stand = '';
$error = '';
$tbname = '';
$roll = '';
if(isset($_POST['substud'])){
   /* echo 'hello';
    echo $_SESSION['ns'];*/
    switch($_POST['grade']){
        case 'E':$tbname = 'GE';$roll = 'GE';break;
        case 'N':$tbname = 'GN';$roll = 'GN';;break;
        case 'T':$tbname = 'GT';$roll = 'GT';break;
        default:break;
    }
    
    /*echo $tbname;*/
        for($j = 0 ;$j<$_SESSION['ns'];$j++){
            $r = $_POST['RNum'.$j];
            $len = strlen((string)$r);
            if($len == 1){
                $r = '0'.$r;
            }
            $roll_no = $roll.$r;
            $name = $_POST['Nam'.$j];
           /* echo $roll_no;
            echo $name;*/
            $query = "INSERT INTO `$tbname`(`RN`, `Name`) VALUES ('$roll_no','$name')";
            $result = mysqli_query($con,$query);
            if($result){
                $error = 'Your Students have recorded';
            }
            else $error = 'error';
        }
 
}
if(isset($_POST['home'])){
    direct('homepage.php');

}
if(isset($_POST['go'])){
    direct('ViewStudent.php');
}

?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<meta charset="utf-8">
<html>
<head>
<form method = "post" action = "InsertStudent.php">
    
<a href="homepage.php">
<button type="submit" name="home" style = "width:100px;height:30px;border-radius:2em;margin-top:25px;float:right;margin-right:20px;">Home</button></a>
<button type="submit" name="go" style = "width:150px;height:30px;border-radius:2em;margin-top:25px;float:right;margin-right:20px;">View Students</button>  
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
        <style>
       
        .zawgyi{
			font-family:Zawgyi-One;
		}
		.unicode{
			font-family:Myanmar3,Yunghkio,'Masterpiece Uni Sans';
		}
        </style>
<link rel = "stylesheet" href="mypage.css">   
</head>
<body>

        <div id = "wrapper" class="unicode">
        <div id = "header3"> <image src = "lg.jpg" alt = "logo" width = "68px" height= "68px" style="border-radius:50%;
            margin-left:150px;
            float:left;
            margin-top:-13px;">  
       
        <strong style = "font-size:20;">Choose Standard:</strong>
                <?php 

                    if(isset($_POST['getstudent'])){
                        if($_POST['grade'] == 'N'){
                        ?>
                        <input type="Radio" name="grade" value="E" >Eight: 
					    <input type="Radio" name="grade" value = "N" checked >Nine: 
                        <input type="Radio" name="grade" value="T" >Ten:
                        <?
                      }elseif($_POST['grade']== 'T'){
                        ?>
                        <input type="Radio" name="grade" value="E">Eight: 
					    <input type="Radio" name="grade" value = "N" >Nine: 
                        <input type="Radio" name="grade" value="T" checked >Ten:
                         <?
                        }else{
                        ?>
                         <input type="Radio" name="grade" value="E" checked>Eight: 
				    	<input type="Radio" name="grade" value = "N" >Nine: 
                              <input type="Radio" name="grade" value="T" >Ten:

                        <?
                    }
                }else{

                    ?>
                    <input type="Radio" name="grade" value="E" checked>Eight: 
				    	<input type="Radio" name="grade" value = "N" >Nine: 
                              <input type="Radio" name="grade" value="T" >Ten:

                        
                    <?
                }


                ?>
                    
				   
                   <input type="number" placeholder="number of students" min="1" max="15" maxlegth="2" name="ns"> 
                    <button style = "border-radius:2em;" type="submit" name="getstudent" value="Record Students" onclick = "return confirm('Are you sure you want to getting start your student records?');">Start Adding</button>
                    <div id = "error"><?php echo $error;?></div>
        </div>
         
        <div id="mp3" >
        
            <?php
                if(isset($_POST['getstudent'])){
                    $grad = $_POST['grade'];
                    
                    $_SESSION['gd'] = $grad;
                    $number = $_POST['ns'];
                    $_SESSION['ns']=$number;
                    switch($grad){
                        case 'E':echo '<h2>Record The Standard Eight Students</h2>';break;
                        case 'N':echo '<h2>Record The Standard Nine Students</h2>';
                                     break;
                        case 'T':echo '<h2>Record The Standard Ten Students</h2>';
                        break;
                        default:break;
                    }
                    
                    ?>
                   <table align="center"  border=0 cellspacing="20" width=40%>
                       <tr><th>Roll-No</th><th>Name</th></tr>

                    <?
                  
                   
                    for($k = 0;$k<$number;$k++){?>
                        <tr><td><input type = "text" name = "RNum<?php echo $k;?>" pattern = "[0-9]{1,}"  maxlength="2" size="5" placeholder="00"></td>
                            <td><textarea type = "text" name = "Nam<?php echo $k;?>"  maxlegth="100" placeholder="Htun Htun" rows = "1" cols="30"></textarea></td></tr>
                        <?
                    } 
                    ?>
                    <tr><td></td><td><input type = "submit" name="substud" value="submit student"></td></tr>;
                </table>
                    <?
               
                    
                }

                

            
            
            ?>
           
       
	<h3>This is for unicode (myanmar3) font</h3>
	<p class="unicode">
		သည်စာသည် unicode ဖြင့်ရေးသောစာဖြစ်သည်၊
        
    </p>
                <div id = "keyboard">
                <img src="uni.png" alt="keyboard layout" style="width:100%;height:100%;border-radius:.7em;">
                </div>
        </div>
        </div>
</form>
         
</body>
</html>


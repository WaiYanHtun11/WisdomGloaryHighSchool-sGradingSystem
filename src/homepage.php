<?php
$noti = "";
function direct($file){
    header("location:".$file);
}
if(isset($_POST['VR'])){
        direct('ViewResult.php');
}
if(isset($_POST['VS'])){
        direct('ViewStudent.php');
}
if(isset($_POST['RS'])){
        direct('InsertStudent.php');
}
if(isset($_POST['RR'])){
        direct('InsertResult.php');
}
if(isset($_POST['ED'])){
        direct('EditResultSheet.php');
}
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<html>
<head>   
        
<link rel="icon"  type = "image/ico" href="/favicon.ico">        
<link rel="stylesheet" href="FONT/css/fontawesome.min.css">
<link rel="stylesheet" href="BST/css/bootstrap.css">
<link rel="stylesheet" type="text/css" media="screen" href="CSS/style.css" />
<style>
       
        button{
                width:200px;
                height:50px;
                text-align:center;
                border-radius:2em;
                
        }
        .zawgyi{
			font-family:Zawgyi-One;
		}
		.unicode{
			font-family:Myanmar3,Yunghkio,'Masterpiece Uni Sans';
		}
        </style>                             
<title>Online Student Exam Result System</title> 
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
            <link rel="stylesheet" href='https://mmwebfonts.comquas.com/fonts/?font=myanmar3' />
    	<link rel="stylesheet" href='https://mmwebfonts.comquas.com/fonts/?font=zawgyi' />
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway:400,800">
        <link rel='stylesheet' href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="FONT/css/fontawesome.min.css">
        <link rel="stylesheet" href="BST/css/bootstrap.css">
        <link rel="stylesheet" type="text/css" media="screen" href="CSS/style.css" />
  
        <link rel="stylesheet" href="/css/style.css">
        
<link rel = "stylesheet" href="mypage.css">   
</head>
<body  class="unicode">       
        <div id = "wrapper">
        <!--<div id="preloader">
    <div id="loading-animation">&nbsp;</div>
</div>
<script type="text/javascript">
        /* ======== Preloader ======== */
        $(window).load(function() {
           var preloaderDelay = 350,
                    preloaderFadeOutTime = 800;
    
            function hidePreloader() {
                var loadingAnimation = $('#loading-animation'),
                        preloader = $('#preloader');
                loadingAnimation.fadeOut();
                preloader.delay(preloaderDelay).fadeOut(preloaderFadeOutTime);
            }
    
            hidePreloader();
          
        });
    </script>-->
        <div id = "header"><image  style = "border-radius:50%;
            margin-left:150px;
            float:left;
            margin-top:5px;"src = "lg.jpg" alt = "logo" width = "68px" height= "68px"> 
        <h1>Wisdom Glory Education Center<br>
        Student's Exam Result and Information System</h1>
        </div>
    

        <div id = "bodypane">
        <div id = "space">
        <form action="homepage.php" method = "post"  class="unicode">
        <div class="container">
                <div class="row">
                        <div class="col-md-3"><button type = "submit" name = "VS" >Student</button></div>
                        <div class="col-md-3"><button type = "submit" name = "VR" >Results</button></div>
                        <div class="col-md-3"> <button type = "submit" name = "RS" >Add Students</button></div>
                        <div class="col-md-3"><button type = "submit" name = "RR">Add Results</button></div>
                        <div class="col-md-2"><button type = "submit" name = "ED" >Setting</button></div>
</div></div>
     
       
       
        
        </form>
        
        </div> 
        <img src="w1.png" style = "border-radius:2em;width:100%;height:50%;margin-top:150px;" alt = "wisdom glory">  
       
	<div class="unicode" >
        <h3>"Introduction To The System"</h3>
	<p style="font-size:18;font-weight:bold;" style="text-align:center;">"Student Exam Result & Information System" သည် "ပညာဂုဏ်ရည်"  ဘော်ဒါဆောင်အတွက် ရည်ရွယ်ရေးထားသော "Web Application" တစ်ခုဖြစ်ပါသည်။<br>
        "Software" ၏ "Objectives" မှာ  အဆာင်ရှိ ကျောင်းသားများစာရင်းကို အလွယ်တကူ ကြည့်နိုင်ခြင်း ၊ စာမေးပွဲများမှအမှတ်များကို  ပေါင်းပေးခြင်း ၊ ရမှတ်  အလိုက်အဆင့်များကို ခွဲပေးခြင်း ၊ အဆင့်ခွဲပြီးသား "Result Form" ကို အလွယ်တကူ "Print" ထုတ်နိုင်ခြင်း ၊ဘာသာရပ်ခြင်းအလိုက် ၊ အတန်းအလိုက် အောင်ချက် ရာခိုင်နှုန်းများကို အလွယ်တကူကြည့်နိုင်ခြင်း 
         စသည်တို့ကို  အချိန်ကုန်လူပင်ပန်းခြင်းသက်သာစွာ လျော့ချစေရန် ဖြစ်ပါသည်။
              
        </p>
        <h4 style="text-align:center;"> မြန်မာစာများရိုက်ရန်အတွက် unicode သုံးရန်ဖြစ်သည်။ unicode(Myanmar 3) keyboard layout ကို "Add Student" တွင် ေပးထားပါသည်။</h4>
        <h3>"How To Use Software"</h3>
        <p style="text-align:center;">
                "home page" တွင် သက်မြင်ရသည့်အတိုင်း "function" ငါးခုရှိပါသည်။
                </p>
                <div id="cat">
                <ul style="circle" style="padding-left:50%;">
                <li>Students</li>
                <li>Results</li>
                <li>Add Student</li>
                <li>Add Result</li>
                <li>Setting</li>
                </div>
        <div style="text-align:center;font-weight:bold;">
                <dl><dt><h3>Students</h3></dt>
                        <dd>ဤနေရာသည် အဆောင်တွင်းရှိ ကျောင်းသားများစာရင်းကို ကြည့်နိုင်သောနေရာဖြစ်သည်။</dd></dl>
                <dl><dt><h3>Result</h3></dt>
                        <dd>ဤနေရာသည် အတန်းအလိုက် စာေမးပွဲအောင်စာရင်းနှင့် အောင်ချက်ရာခိုင်နှုန်းများကို ကြည့်နိုင်သော နေရာဖြစ်သည်။</dd></dl>
                <dl><dt><h3>Add Student</h3></dt>
                        <dd>ဤနေရာသည် software ၏ အဓိကအရင်းအမြစ် ဖြစ်သည်။ ဤနေရာမှ ကျောင်းသား၏ အချက်အလက်များကို  ကြိုတင်ထည့်သွင်ထားမှသာ ကျန်ေသာအပိုင်းများကို  အဆင်ပြေပြေဆက်လုပ်နိုင်မည်ဖြစ်သည်။
                        ဤနေရာမှ ကျောင်းသား၏ ခံုအမှတ်နှင့် အမည်တို့ကို ထည့်သွင်းရန် ဖြစ်သည်။ ထည့်သွင်းရာသွင် မှန်မှန်ကန်ကန်ထည့်ရန် အရေးကြီးသည်။ဤနေရာသည် စာမေးပွဲရမှတ်များ၊အဆင့်များခွဲရာတွင် ကျောင်းသား၏ ခံုအမှတ်နှင့် အမည်သည် အရေးကြီးေသာ အခန်းကဏ္ဌတွင် ပါ၀င်နေသည်။
                        ခံုအမှတ်ထည့်သွင်းရာတွင် ကဏန်းသာလျှင် ထည့်သွင်းရန်ြဖစ်ည်။ နှစ်သက်ရာ အတန်းနှင့် ထည့်သွင်းလိုသော ကျောင်းသားအရေအတွက်ကို ရိုက်ထည့်ပြီး ကျောင်းသားများကို ထည့်သွင်းရန်ဖြစ်ည်။
                        </dd>
                </dl>
                <dl><dt><h3>Add Result</h3></dt>
                        <dd>ဤနေရာသည် ကျောင်းသား၏ စားမေးပွဲရမှတ်အလိုက် ထိုကျောင်းသားနှင့်သက်ဆိုင်ေသာ  ခုံအမှတ်နှင့်  နှင့် သတ်ဆိုင်ရာ အတန်းကို ေရွး၍  ကြိုက်နှစ်သက်ရာ အရေအတွက်အလိုက် မှန်မှန်ကန်ကန် ထည့်သွင်းရမည့် နေရာဖြစ်သည်။
                        ခံုအမှတ်ထည့်သွင်းရာတွင် ကဏန်းသာလျှင် ထည့်သွင်းရန်ြဖစ်ည်။</dd>
                </dl>
                <dl><dt><h3>Setting</h3></dt>
                <img src = "setting.png" alt="setting" style="border-radius:1em;width:80%;height:80%;"><br><br>
                <dd> ဤနေရာသည် အဆင့်ခွဲပြီးသားအောင်စာရင်း ဖောင်အတွက် ေဖြဆိုသည့်စာမေးပွြဲအမည်ကို ထည့်သွင်းခြင်း ၊ ထည့်သွင်းထားေသာကျောင်းသား၏အမည်လွဲမှားမှုရှပါက အမည်ပြန်ပြောင်းနိုင်ခြင်း ၊ 
                        အဆောင်တွင်းရှိ ကျောင်းသားစာရင်းမှ တစ်ယောက်ခြင်းလည်းေကာင်း၊ အားလံုးေသာ်လည်းကောင်း သတ်ဆိုင်ရာ အတန်းကို ေရးချယ်ပြီး ဖျက်နိုင်သည်။
                        စာမေးပွဲ စာရင်းသည်လည်း ထိုနည်းတူပင်  ဖျတ်ပြီး  ပြန်၍ထည့်သွင်းနိုင်သည်။ 
                         အထက်ပါပံုအတိုင်း "remove one result" သည် အောင်စာရင်းမှ ကျောင်းသားတစ်ယောက်ကို ြဖက်ပြီး "remove all result"သည်  အောင်စာရင်း တစ်ခုလံုးကို ဖျက်ရန်ဖြစ်သည်။
                        ထိုနည်းတူပင် "remove one" သည် ကျောင်းသားစာရင်းမှ ကျောင်းသားတစ်ယောက်ကို ဖျက်နိုင်ပြီး "remove all" သည် ကျောင်းသားအားလံုးမှတ်တမ်းကို ဖျက်ရန်ြဖစ်သည်။
                        တစ်ယောက်ချင်းဖျက်ရန်အတွက် သက်ဆိုင်ရာ ကျောင်းသား၏ ခံုအမှတ်နှင့် အတန်းကို ေရွးချ,်ပြီးမှ ဖျက်ရပါမည်။
                        မှတ်တမ်းအားလံုးကို ဖ်က်ရန် အတန်းကိုသာ ေရွးချ,်ေပးရန်ြဖြစ်ပါသည်။
                        ကျောင်းသားအမည်ပြောင်းလဲရန်န သတ်ဆိုင်ရန်တန်း၊ ခံုအမှတ်နှင့် "topic or name type here text box " 
                        တွင် ပြောင်းလိုေသာ အမည်အသစ်ကို ရိုက်ထည့်ြပီး နိုပ်လိုက်ခုင်းဖြင့် ပြောင်းလဲနိုင်သည်။
                        စာပမေးပွဲ ေခါင်းစဥ်အတွက် ထို "text box" တွင်း ရိုက်ထည့်ပြီး "submit topic"နိုပ်လိုက်ခြင်းဖြင့် ပြောင်းနိုင်ပါသည်။
                        </dd>
                </dl>
                <h3 style="font-style:italic;">Coded by Wai Yan Htun(University Of Computer Studies,Mandalay(UCSM))</h3>
                

        
        </div>
        
    </div>
        </div>
            
        </div>

    
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
	<script>window.jQuery || document.write('<script src="js/vendor/jquery-1.9.1.min.js"><\/script>')</script>
	<script src="JS/main.js"></script>

         
</body>
</html>

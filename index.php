<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Bootstrap 101 Template</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script>
var xmlhttp = false;
function showRSS(str) {
  if (str.length==0) { 
    document.getElementById("rssOutput").innerHTML="";
    return;
  }
  if (window.XMLHttpRequest) {
    // code for IE7+, Firefox, Chrome, Opera, Safari
    xmlhttp=new XMLHttpRequest();
  } 
  xmlhttp.onreadystatechange=function() {
    if (xmlhttp.readyState==4 && xmlhttp.status==200) {
      document.getElementById("rssOutput").innerHTML=xmlhttp.responseText;
    }
  }
  xmlhttp.open("GET","getrss.php?q="+str,true);
  xmlhttp.send();
}
</script>
<style type="text/css">
span.label {color:black;width:30;height:16;text-align:center;margin-top:0;background:#ffF;font:bold 13px Arial} 
span.c1 {cursor:hand;color:black;width:30;height:16;text-align:center;margin-top:0;background:#ffF;font:bold 13px Arial}
span.c2 {cursor:hand;color:red;width:30;height:16;text-align:center;margin-top:0;background:#ffF;font:bold 13px Arial}
span.c3 {cursor:hand;color:#b0b0b0;width:30;height:16;text-align:center;margin-top:0;background:#ffF;font:bold 12px Arial}
</style>
<!--Start of Calendar from http://www.htmlgoodies.com/beyond/javascript/article.php/3887346-->
<script type="text/javascript">
function maxDays(mm, yyyy){
var mDay;
	if((mm == 3) || (mm == 5) || (mm == 8) || (mm == 10)){
		mDay = 30;
  	}
  	else{
  		mDay = 31
  		if(mm == 1){
   			if (yyyy/4 - parseInt(yyyy/4) != 0){
   				mDay = 28
   			}
		   	else{
   				mDay = 29
  			}
		}
  }
return mDay;
}
function changeBg(id){
	if (eval(id).style.backgroundColor != "yellow"){
		eval(id).style.backgroundColor = "yellow"
	}
	else{
		eval(id).style.backgroundColor = "#ffffff"
	}
}
function writeCalendar(){
var now = new Date
var dd = now.getDate()
var mm = now.getMonth()
var dow = now.getDay()
var yyyy = now.getFullYear()
var arrM = new Array("January","February","March","April","May","June","July","August","September","October","November","December")
var arrY = new Array()
	for (ii=0;ii<=4;ii++){
		arrY[ii] = yyyy - 2 + ii
	}
var arrD = new Array("Sun","Mon","Tue","Wed","Thu","Fri","Sat")

var text = ""
text = "<form name=calForm>"
text += "<table border=1>"
text += "<tr><td>"
text += "<table width=100%><tr>"
text += "<td align=left>"
text += "<select name=selMonth onChange='changeCal()'>"
	for (ii=0;ii<=11;ii++){
		if (ii==mm){
			text += "<option value= " + ii + " Selected>" + arrM[ii] + "</option>"
		}
		else{
			text += "<option value= " + ii + ">" + arrM[ii] + "</option>"
		}
	}
text += "</select>"
text += "</td>"
text += "<td align=right>"
text += "<select name=selYear onChange='changeCal()'>"
	for (ii=0;ii<=4;ii++){
		if (ii==2){
			text += "<option value= " + arrY[ii] + " Selected>" + arrY[ii] + "</option>"
		}
		else{
			text += "<option value= " + arrY[ii] + ">" + arrY[ii] + "</option>"
		}
	}
text += "</select>"
text += "</td>"
text += "</tr></table>"
text += "</td></tr>"
text += "<tr><td>"
text += "<table border=1>"
text += "<tr>"
	for (ii=0;ii<=6;ii++){
		text += "<td align=center><span class=label>" + arrD[ii] + "</span></td>"
	}
text += "</tr>"
aa = 0
	for (kk=0;kk<=5;kk++){
		text += "<tr>"
		for (ii=0;ii<=6;ii++){
			text += "<td align=center><span id=sp" + aa + " onClick='changeBg(this.id)'>1</span></td>"
			aa += 1
		}
		text += "</tr>"
	}
text += "</table>"
text += "</td></tr>"
text += "</table>"
text += "</form>"
document.write(text)
changeCal()
}
function changeCal(){
var now = new Date
var dd = now.getDate()
var mm = now.getMonth()
var dow = now.getDay()
var yyyy = now.getFullYear()
var currM = parseInt(document.calForm.selMonth.value)
var prevM
	if (currM!=0){
		prevM = currM - 1
	}
	else{
		prevM = 11
	}
var currY = parseInt(document.calForm.selYear.value)
var mmyyyy = new Date()
mmyyyy.setFullYear(currY)
mmyyyy.setMonth(currM)
mmyyyy.setDate(1)
var day1 = mmyyyy.getDay()
	if (day1 == 0){
		day1 = 7
	}
var arrN = new Array(41)
var aa
	for (ii=0;ii<day1;ii++){
		arrN[ii] = maxDays((prevM),currY) - day1 + ii + 1
	}
	aa = 1
	for (ii=day1;ii<=day1+maxDays(currM,currY)-1;ii++){
		arrN[ii] = aa
		aa += 1
	}
	aa = 1
	for (ii=day1+maxDays(currM,currY);ii<=41;ii++){
		arrN[ii] = aa
		aa += 1
	}
	for (ii=0;ii<=41;ii++){
		eval("sp"+ii).style.backgroundColor = "#FFFFFF"
	}
var dCount = 0
	for (ii=0;ii<=41;ii++){
		if (((ii<7)&&(arrN[ii]>20))||((ii>27)&&(arrN[ii]<20))){
			eval("sp"+ii).innerHTML = arrN[ii]
			eval("sp"+ii).className = "c3"
		}
		else{
			eval("sp"+ii).innerHTML = arrN[ii]
			if ((dCount==0)||(dCount==6)){
				eval("sp"+ii).className = "c2"
			}
			else{
				eval("sp"+ii).className = "c1"
			}
			if ((arrN[ii]==dd)&&(mm==currM)&&(yyyy==currY)){
				eval("sp"+ii).style.backgroundColor="#90EE90"
			}
		}
	dCount += 1
		if (dCount>6){
			dCount=0
		}
	}
}
</script>
<!--End of calendar from http://www.htmlgoodies.com/beyond/javascript/article.php/3887346-->

<script>
            var XMLHttpRequestObject = false;
            if(window.XMLHttpRequest){
                XMLHttpRequestObject = new XMLHttpRequest();
            }
            function getData(datasource,divID){
                if(XMLHttpRequestObject){
                    var obj = document.getElementById(divID);
                    XMLHttpRequestObject.open("GET",datasource,true);
                    XMLHttpRequestObject.onreadystatechange =
                    function(){
                        if(XMLHttpRequestObject.readyState==4 && XMLHttpRequestObject.status==200){
                            obj.innerHTML=XMLHttpRequestObject.responseText;
                        }
                    
                    }
                    XMLHttpRequestObject.send(null);
                }
            }
        </script>
  
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js">
   
    </script>
  <script>
$(document).ready(function(){
    $("#hideps4").click(function(){
        $("#Ps4").hide();
    });
});
$(document).ready(function(){
    $("#hidexbox").click(function(){
        $("#Xbox").hide();
    });
});
    $(document).ready(function(){
    $("#hidepc").click(function(){
        $("#PC").hide();
    });
});
    $(document).ready(function(){
    $("#hidenin").click(function(){
        $("#NIN").hide();
    });
});
    $(document).ready(function(){
    $("#hidecal").click(function(){
        $("#CAL").hide();
    });
});
$(document).ready(function(){
$("#showps4").click(function(){
    $("#Ps4").show();
});
});
$(document).ready(function(){
$("#showxbox").click(function(){
    $("#Xbox").show();
});
});
$(document).ready(function(){
$("#showpc").click(function(){
    $("#PC").show();
});
});
$(document).ready(function(){
$("#shownin").click(function(){
    $("#NIN").show();
});
});
$(document).ready(function(){
$("#showcal").click(function(){
    $("#CAL").show();
});
});
</script>
  
  
  </head>
 

 
 
 
 
  <body>
    
    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container-nav">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">GamerNet, by Alex Wong, John Cunningham and Idriss Markaz.</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
        
        </div><!--/.navbar-collapse -->
      </div>
    </nav>

    <!-- Main jumbotron for a primary marketing message or call to action -->
    <div class="jumbotron">
      <div class="container">
        <h1>Welcome to GamerNet!</h1>
        <p>Welcome to GamerNet, see below for more information in our introduction.</p>
        
      </div>
    </div>

    <div class="container">
      <!-- Example row of columns -->
      
   
        
      <div class="row">
        
        <div class="col-md-6">
             <div class="left">
               <h1>Check out our games reccomendations!
               *Disclaimer* We do not own the links provided *Disclaimer*</h1>
               
               <!--Note: All links taken from wikipedia are not of our own making-->
               
    <button id="hideps4" >Click to remove ps4 games </button>

    <button id="showps4" >Click to show ps4 games</button>

    
    <div id="Ps4">

    <p1><a href="https://en.wikipedia.org/wiki/Destiny_(video_game)">Destiny </a></p1>
    <br>
    <p1><a href="https://en.wikipedia.org/wiki/Call_of_Duty:_Black_Ops_III">Call of duty: Black Ops III</a></p1>
    <br>
    <p1><a href= "https://en.wikipedia.org/wiki/The_Last_of_Us">The last of us </a></p1>
    <br>
    <p1><a href="https://en.wikipedia.org/wiki/Bloodborne">Bloodborne</a></p1>
    </div>
    
    <br>
    <br>
    
    <button id="hidexbox" >Click to remove Xbox360 games </button>
    <button id="showxbox" >Click to show Xbox360 games</button>

    <div id="Xbox">
    <p2><a href= "https://en.wikipedia.org/wiki/Grand_Theft_Auto_V">Grand theft auto 5</a></p2>
    <br>
    <p2><a href= "https://en.wikipedia.org/wiki/Minecraft">Minecraft</a></p2>
    <br>
    <p2><a href= "https://en.wikipedia.org/wiki/South_Park:_The_Stick_of_Truth">South park: The stick of truth</a> </p2>
    <br>
    <p2><a href= "https://en.wikipedia.org/wiki/The_Walking_Dead_(video_game)">The walking dead: The game</a></p2>
    </div>
    
    <br>
    <br>
    
    <button id="hidepc" >Click to remove Pc games</button>
    <button id="showpc" >Click to show ps4 games</button>
    <div id= "PC">
  
    <p3><a href= "https://en.wikipedia.org/wiki/League_of_Legends">League of legends</a></p3>
    <br>
    <p3><a href= "https://en.wikipedia.org/wiki/Ori_and_the_Blind_Forest">Ori and the blind forest</a></p3>
    <br>
    <p3><a href= "https://en.wikipedia.org/wiki/Left_4_Dead_2">Left 4 dead 2</a></p3>
    <br>
    <p3><a href= "https://en.wikipedia.org/wiki/Final_Fantasy_XIV">Final fantasy 14: A realm reborn</a></p3>
    </div>
    
    <br>
    <br>
    
    <button id ="hidenin" >Click to remove Nintendo games</button>
    <button id="shownin" >Click to show Nintendo games</button>
    <div id ="NIN">
    
    <p4><a href="https://en.wikipedia.org/wiki/Splatoon">Splatoon</a></p4>
    <br>
    <p4><a href="https://en.wikipedia.org/wiki/Xenoblade_Chronicles_X">Xenoblade Chronicles X</a></p4>
    <br>
    <p4><a href="https://en.wikipedia.org/wiki/Monster_Hunter_4">Monster hunter 4 Ultimate</a></p4>
    <br>
    <p4><a href="https://en.wikipedia.org/wiki/Pok%C3%A9mon_Super_Mystery_Dungeon">Pokemon Super mystery dungeon</a></p4>
    </div>
    
    <br>
    <br>
    
               
                 
             </div>
              <div id ="movies" class="left">
                 <?php
        

                  

                  // Load the XML source

                  $xml = new DOMDocument;
                  $xml->load('index.xml');
                  
                  $xsl = new DOMDocument;
                  $xsl->load('test.xsl');
                  

                 
                  $proc = new XSLTProcessor;
                  $proc->importStyleSheet($xsl); 

                  // Configure the transformer
                  $proc = new XSLTProcessor;
                  $proc->importStyleSheet($xsl); // attach the xsl rules

                  
                  echo $proc->transformToXML($xml);
                  
                  ?>
        
                 
                 
             </div>
             
                <div class="left">
                <button id ="hidecal" >Click to remove Calendar</button>
                <button id="showcal" >Click to show Calendar</button>
                <div id ="CAL">
                <script type="text/javascript">writeCalendar()</script>
                </div>
              
             </div>
       </div>
        <div class="col-md-6">
             <div class="right">
               
              <h1>Introduction/Game of the month(November)</h1>
        <form>
            <input type="button" value="Display Message" onclick = "getData('gotm.txt','targetDiv')">
        </form>
        <div id="targetDiv">
            <p> Hello and welcome to Gamenet, the single page stop for all of 
            your gaming nessissities, feel free to browse around to check out
            all the latest news on the top games of the month and upcoming
            game news on our RSS feed below, click on the button to view
            our game of the month. Unfortunatly though if you wish to read 
            this introduction again you will have to refresh the page, 
            altough this is useless information, hello!</p>
        </div> 
               

                 
             </div>
             
              <div class="right">
                   
                <form>
<select onchange="showRSS(this.value)">
<option value="">No RSS Feed:</option>
<option value="Google">IGN Game Feed</option>
<option value="NBC">IGN All News Feed</option>
</select>
</form>
<br>
<div id="rssOutput">RSS-feed will be listed here...</div>
            
            
            
            
            
             </div>
             
             <div id = "animation"class="right">
                 
                 <embed src="destinyflash.swf" height="400px" width="500px">
                 
                 
                 
             </div>
          
             
             
        </div>
      </div>

      <hr>

      <footer>
        <p>&copy; Company 2015</p>
        
              
        
        
      </footer>
    </div> <!-- /container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="../../dist/js/bootstrap.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
  </body>

</html>
=======
</html>


<%-- 
    Document   : index
    Created on : 21-Jun-2011, 21:14:27
    Author     : x13508827
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Emporium.com</title>
        <link href="css/mystylesheetcss.css" type="text/css" rel="stylesheet" />
            
    </head>
    <body bgcolor ="#EEEaaa">
        <form action="StoreHome">
        <h1><center>Welcome to Movies &amp; Games Emporium!</center></h1>
      <center><input type="Submit" value ="HOME"></center>
        </form>
        <script type="text/javascript">
			
          var image1 = new Image(); image1.src = "images/Jumpstreet.jpg"  <!-- JavaScript to slide images; source W3scool-->
          var image2 = new Image(); image2.src = "images/bigsleep.jpg"
          var image3 = new Image(); image3.src = "images/thelosers.jpg"
                      var image4 = new Image(); image4.src = "images/BookofEli.jpg"
          var image5 = new Image(); image5.src = "images/DragonAgeOrigins.jpg"
          var image6 = new Image(); image6.src = "images/Dracula.jpg"
                      var image7 = new Image(); image7.src = "images/JamesBond2.jpg"
          var image8 = new Image(); image8.src = "images/Entourage.jpg"
          var image9 = new Image(); image9.src = "images/GoodNightAndGoodLuck.jpg"
                      var image10 = new Image(); image10.src = "images/Shrooms.jpg"
            var image11 = new Image();
            image11.src = "images/September 11.jpg";
            var image12 = new Image();
            image12.src = "images/Scrubs.jpg"
            var image13 = new Image();
            image13.src = "images/TheStoryOfRicky.jpg"
            var image14 = new Image();
            image14.src = "images/ThisMeansWar.jpg"
            var image15 = new Image();
            image15.src = "images/Unforgiven.jpg"
            var image16 = new Image();
            image16.src = "images/Stormrise.jpg"
            var image17 = new Image();
            image17.src = "images/RigRacer.jpg"
            var image18 = new Image();
            image18.src = "images/MummyReturns.jpg"
            var image19 = new Image();
            image19.src = "images/JamesBond2.jpg"
            var image20 = new Image();
            image20.src = "images/SawV.jpg"
            var image21 = new Image();
            image21.src = "images/Hanna.jpg"
            var image22 = new Image();
            image22.src = "images/AngelCanyon.jpg"
            var image23 = new Image();
            image23.src = "images/DancesWithWolves.jpg"
            var image24 = new Image(); image24.src = "images/Hamlet.jpg"
            var image25 = new Image(); image25.src = "images/MedalOfHonor_1.jpg"
		
        </script>	
        <table border = "1">	
            <div id= "slide1" width ="600px" height="400px" align = "right" >
                <p><img src="15.jpg" name="slide" width ="700px" height="500px" align = "top" /></p>
                <script type="text/javascript">
                    var step = 1;
                    function slideit()
                    {
                        document.images.slide.src = eval("image" + step + ".src");
                        if (step < 25)
                            step++;
                        else
                            step = 1;<!--This goes back to the first shoe when reach the last one.-->
                        setTimeout("slideit()", 2500);
                    }
                    slideit();
                </script>
     </body>
</html>

<?xml version="1.0" encoding="UTF-8" ?>
<!-- 
Core layout of the main page excluding the index page.
--> 
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">   
    <xsl:template match="/">
        <html>
            <head>
                <title>Movies Store</title>
                <link href="css/style.css" type="text/css" rel="stylesheet" />
                <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
                <link href="bootstrap/css/bootstrap.css" rel="stylesheet" />
                <!-- Bootstrap theme -->
                <link href="bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" />
                <link href="bootstrap/css/bootstrap-theme.css" rel="stylesheet" />
                <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.1/jquery.min.js"></script>
                <script src="bootstrap/js/jquery-1.10.2.min.js" ></script>
                <script src="bootstrap/js/jquery-1.10.2.js" ></script>
                <script src="bootstrap/js/bootstrap.js" ></script>
                <script src="bootstrap/js/bootstrap.min.js" ></script>
                
                <script>
                    function Display(){
                        alert("Hello");
                    }
                </script>
            </head>
            <body>
                <div id="wrapper">  
                    <div id="header">
                         <ul class="nav nav-tabs">
                            <li role="presentation">
                                <a href="HistoryHomeServlet">Sign in</a>
                            </li>
                            <li role="presentation" class="active">
                                <a href="Store">Movies</a>
                            </li>                       
                        </ul>
                        <div class="clear-fix" style="width:100%;">
                            <div style="float:right;">
                                <img class="img-rounded" src="https://m1.behance.net/rendition/modules/88328735/hd/dc258f8f0b797e850046aba156d441fc.jpg" width = "100" height = "100"/>
                            </div>
                            <div class="site-title">
                                <h1> The Movies</h1>
                            </div>
                        </div>         
                    </div>
                    <div id="body">
                        <xsl:apply-templates select="*"/>
                    </div>
                    <footer>
                        <p>MovieStore developed by Sena and Valentin © 2014</p>
                    </footer>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:transform>
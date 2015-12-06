<?xml version="1.0" encoding="UTF-8" ?>
<!-- 
Core layout of the main page excluding the index page.
--> 
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Sign in</title>
                <link href="css/style.css" type="text/css" rel="stylesheet" />
                <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
                <link href="bootstrap/css/bootstrap.css" rel="stylesheet" />
                <!-- Bootstrap theme -->
                <link href="bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" />
                <link href="bootstrap/css/bootstrap-theme.css" rel="stylesheet" />
                <script src="bootstrap/js/bootstrap.js" ></script>
                <script src="bootstrap/js/bootstrap.min.js" ></script>

            </head>
            <body>
                <div id="wrapper">  
                    <div id="header">
                        <ul class="nav nav-tabs">
                            <li role="presentation" class="active">
                                <a href="HistoryHomeServlet">Sign in</a>
                            </li>
                            <li role="presentation" >
                                <a href="Store">Movies</a>
                            </li>
                        </ul>         
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
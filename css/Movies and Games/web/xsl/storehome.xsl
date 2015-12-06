<?xml version="1.0" encoding="UTF-8" ?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:include href="storemainlayout.xsl"/>

    <xsl:template match="*">
<html>
    <head> 
        <title>Movies</title>
    </head>
<body>
        <div class="row">
            <div class="col-md-4">
                <h1>Movies</h1>
            </div>
            <div class="col-md-8">
                <h1>Description</h1>
            </div>
        </div>
        <xsl:apply-templates select="movie"/>	
</body>
</html>
    </xsl:template>

    <xsl:template match="movie">
        <div class="row">
            <div class="col-md-4">
                <xsl:element name="h4">
                    <xsl:element name="a">
                        <xsl:attribute name="href">Movie?movie=<xsl:value-of select="title"/></xsl:attribute>
                        <xsl:value-of select="title"/>
                    </xsl:element>
                </xsl:element>
                <input type="button" value="Price" onclick="Display();" />
            </div>
            <div class="col-md-8">
                <xsl:value-of select="description"/>
            </div>
        </div>
        <hr />
    </xsl:template>

</xsl:transform>
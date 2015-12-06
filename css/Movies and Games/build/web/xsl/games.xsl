<?xml version="1.0" encoding="UTF-8" ?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:include href="storemainlayout.xsl"/>
    
    <xsl:param name="currentMovie" />
    <xsl:param name="nextMovie" />
    <xsl:param name="prevMovie" />
    
    <xsl:template match="*">
        <center>
            <xsl:apply-templates select="store"/>
        </center>
    </xsl:template>

    <xsl:template match="store">
        <xsl:for-each select="movie">
            <xsl:if test="./title=$currentMovie">
                <div class="row">
                    <div class="col-md-4">
                        <h4>Title</h4>                        
                    </div>
                    <div class="col-md-8">
                        <h3>
                            <xsl:value-of select="./title"/>
                        </h3>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <h4>Description</h4>
                    </div>
                    <div class="col-md-8">
                        <xsl:value-of select="./description"/>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <h4>Director</h4>
                        
                    </div>
                    <div class="col-md-8">
                        <xsl:for-each select="./directors/director">
                            <strong>
                                <xsl:value-of select="."/> 
                            </strong>, 
                        </xsl:for-each>
                        
                    </div>
                </div>
                
                <div class="row">
                    <div class="col-md-4">
                        <h4>Casting</h4>
                    </div>
                    <div class="col-md-8">
                        <xsl:for-each select="./casts/starring">
                            <strong>
                                <xsl:value-of select="."/>
                            </strong> , 
                        </xsl:for-each>                        
                    </div>
                </div>
                
                <div class="row">
                    <div class="col-md-4">
                        <h4>Trailer</h4>
                    </div>
                    <div class="col-md-8">
                       
                        <xsl:element name="embed">
                            <xsl:attribute name="src">
                                <xsl:value-of select="./video"/>
                            </xsl:attribute>
                            <xsl:attribute name="width">420</xsl:attribute>
                            <xsl:attribute name="height">315</xsl:attribute>
                        </xsl:element>                       
                    </div>
                </div>
                
                <div class="row">
                    <div class="col-md-4">
                        <h4> Available in store</h4>
                    </div>
                    <div class="col-md-8">
                        <strong>
                            <xsl:value-of select="./price"/>
                        </strong>                       
                    </div>
                </div>
                
                <center>
                    <ul id="menu">
                        <li>	  
                            <xsl:element name="a">
                                <xsl:attribute name="href">Movie?movie=<xsl:value-of select="$prevMovie"/>
                                </xsl:attribute>Prev
                            </xsl:element> 
                        </li>             
                        |
                        <li>   
                            <xsl:element name="a">
                                <xsl:attribute name="href">Movie?movie=<xsl:value-of select="$nextMovie"/>
                                </xsl:attribute>Next
                            </xsl:element>
                        </li>
                    </ul>
                </center>
            </xsl:if>
        </xsl:for-each>
                
        <xsl:value-of select="title"/>
           
        <hr />
    </xsl:template>
	
</xsl:transform>
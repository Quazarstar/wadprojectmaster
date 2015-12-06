<?xml version="1.0" encoding="UTF-8" ?>
<!-- 
This page deals with the transformation of event element in our xml
and attach these element with the anchor tag to create a navigational link
using the HistoryEventServlet.java class
-->
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:include href="historyinclude.xsl"/>
    
    <xsl:param name="vCountryName"/>

    <xsl:template match="*">
        <xsl:apply-templates select="country"/>
    </xsl:template>

    <xsl:template match="country">
        <xsl:if test="name=$vCountryName">
            <xsl:apply-templates select="era/events"/>
        </xsl:if>
    </xsl:template>

    <xsl:template match="events">
        <ul id="menuI">		        
            <xsl:for-each select="event">
                <li>
                    <xsl:element name="a">
                        <xsl:attribute name="href">HistoryEventServlet?name=<xsl:value-of select="name"/></xsl:attribute>
                        <xsl:value-of select="name"/>
                    </xsl:element>
                </li>
                <xsl:element name="video" >
                    <xsl:attribute name="width">300</xsl:attribute>

                    <xsl:element name="source" >
                        <xsl:attribute name="src"> 
                            <xsl:value-of select="./video"/>
                        </xsl:attribute>
                        <xsl:attribute name="type">video/mp4</xsl:attribute>
                    </xsl:element>
                </xsl:element>
            </xsl:for-each>
        </ul>

    </xsl:template>
	
</xsl:transform>
<?xml version="1.0" encoding="UTF-8" ?>
<!-- 
This page handles the information which is displayed after clicking on one of the events
from the event list.
Details of the Events is displayed using this transformation xsl file.

*NOTE* on the bottom we have the NEXT and PREV buttons which navigates between different events!
--> 
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:include href="historyinclude.xsl"/>

    <xsl:param name="vEventName"/>
    <xsl:param name="vNextName"/>
    <xsl:param name="vPrevName"/>
	
    <xsl:template match="*">
        <xsl:apply-templates select="country/era/events"/>
    </xsl:template>
	
    <xsl:template match="events">
        <xsl:for-each select="event">
            <xsl:if test="./name=$vEventName">
                <xsl:value-of select="./name"/>
                <br/>
                <b>Key Persons</b>
                <br/>


                <xsl:for-each select="./keyPersons/person">
                    <xsl:value-of select="."/>
                    <br/>
                </xsl:for-each>

                <b>Background</b>
                <br/>
                <xsl:value-of select="./background"/>
                <br/>
                <div id="imgs">
                    <xsl:element name="img" >
                        <xsl:attribute name="src">
                            <xsl:value-of select="./image"/>
                        </xsl:attribute>
                    </xsl:element>
                </div>
                <br/>
                <b>Details</b>
                <br/>

                <xsl:for-each select="./details/detail">
                    <xsl:value-of select="."/>
                    <br/>
                </xsl:for-each>


                <hr/>
                <ul id="menu">
                    <li>	  
                        <xsl:element name="a">
                            <xsl:attribute name="href">HistoryEventServlet?name=<xsl:value-of select="$vPrevName"/>
                            </xsl:attribute>Prev
                        </xsl:element> 
                    </li>             
                    |
                    <li>   
                        <xsl:element name="a">
                            <xsl:attribute name="href">HistoryEventServlet?name=<xsl:value-of select="$vNextName"/>
                            </xsl:attribute>Next
                        </xsl:element>
                    </li>
                </ul>
            </xsl:if>
        </xsl:for-each>		
    </xsl:template>	
</xsl:transform>
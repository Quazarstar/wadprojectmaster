<?xml version="1.0" encoding="UTF-8" ?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:include href="historyinclude.xsl"/>

    <xsl:template match="country">
        <div class="row">
            <div class="col-md-4">
                <xsl:element name="a">
                    <xsl:attribute name="href">HistoryEventsServlet?name=<xsl:value-of select="name"/></xsl:attribute>
                    <xsl:value-of select="name"/>
                </xsl:element>
            </div>
            <div class="col-md-8">
                <xsl:value-of select="overview"/>
            </div>
        </div>
        <hr />
    </xsl:template>
	
</xsl:transform>
<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <!-- Key for identifying teams -->
  <xsl:key name="unique-teams" match="/Games/Game" use="Home" />

  <xsl:template match="/">
    <html>
    <head>
    <title>Team Standings</title>
    </head>
    <body>

        <!-- Get distinct teams, sort by team name -->
        <xsl:apply-templates select="//Game[generate-id() = generate-id(key('unique-teams', Home)[1])]">
            <xsl:sort select="Home" />
        </xsl:apply-templates>

    </body> 
    </html>
  </xsl:template>

  <xsl:template match="Game">

    <!-- Current team -->
    <xsl:variable name="selectedteam" select="Home" />

    <!-- Output each unique team name to the screen -->
    <h1><xsl:value-of select="$selectedteam"/></h1>

    <!-- Loop through all games to calculate totals??? -->
    <xsl:for-each select="//Game">    
    </xsl:for-each>
    
    
    

  </xsl:template>

</xsl:stylesheet>
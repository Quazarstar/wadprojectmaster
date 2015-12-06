<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
  <h2>Must have Gaming collection 2015</h2>
  <table border="1">
    <tr bgcolor="#9acd32">
      <th>Game</th>
      <th>Developer</th>
      <th>Description</th>
      <th>Price</th>
      
    </tr>
    <xsl:for-each select="store/movie">
    <tr>
      <td><xsl:value-of select="game"/></td>
      <td><xsl:value-of select="developers/developer/name"/></td>
      <td><xsl:value-of select="description"/></td>
      <td><xsl:value-of select="price"/></td>
    </tr>
    </xsl:for-each>
  </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
      <html>
        <body>
          <xsl:for-each   select="concesionario/coche">
          <div style="margin: auto;">
              <img width="350px" height="250px">
                <xsl:attribute  name="src">
                  <xsl:value-of select="@urlFoto"></xsl:value-of>
                </xsl:attribute>
              </img>
          </div>
          </xsl:for-each>
        </body>
    </html>
  </xsl:template>
</xsl:stylesheet>

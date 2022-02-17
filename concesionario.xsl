<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
          <html>
            <head>
	            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"/>
          </head>
            <body>
            <h2>Lista de Coches</h2>
            <table class="table">
                    <tr bgcolor="#9acd32">
                    <th>Id</th>
                    <th>Matricula</th>
                    <th>Nombre Marca</th>      
                    <th>Precio</th>      
                  </tr>
                  <xsl:for-each select="concesionario/coche">
                    <tr>
                      <td><xsl:value-of select="@id"/></td>
                      <td><xsl:value-of select="matricula"/></td>
                      <td><xsl:value-of select="marca/nombre"/></td>        
                      <td><xsl:value-of select="modelo/precio"/></td>
                    </tr>
                  </xsl:for-each>
              </table>
            </body>         
        </html>
  </xsl:template>
</xsl:stylesheet>

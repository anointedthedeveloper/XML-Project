<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html"/>

  <xsl:template match="/">
    <html>
    <head>
      <title>Movie Catalog</title>
      <style>
        body  { font-family: Arial, sans-serif; max-width: 800px; margin: 40px auto; background: #0f0f0f; color: #eee; }
        h1    { color: #e50914; }
        table { width: 100%; border-collapse: collapse; }
        th    { background: #e50914; color: #fff; padding: 10px; text-align: left; }
        td    { padding: 9px 10px; border-bottom: 1px solid #333; }
        tr:hover td { background: #1a1a1a; }
        .stars { color: #f5c518; }
      </style>
    </head>
    <body>
      <h1>&#127916; Movie Catalog</h1>
      <table>
        <tr><th>Title</th><th>Genre</th><th>Year</th><th>Rating</th></tr>
        <xsl:for-each select="catalog/movie">
          <xsl:sort select="rating" order="descending" data-type="number"/>
          <tr>
            <td><xsl:value-of select="title"/></td>
            <td><xsl:value-of select="genre"/></td>
            <td><xsl:value-of select="year"/></td>
            <td><span class="stars">&#9733;</span> <xsl:value-of select="rating"/></td>
          </tr>
        </xsl:for-each>
      </table>
    </body>
    </html>
  </xsl:template>
</xsl:stylesheet>

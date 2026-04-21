<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html"/>

  <xsl:template match="/">
    <html>
    <head>
      <title>Recipe Book</title>
      <style>
        body  { font-family: Arial, sans-serif; background-color: #fffaf4; max-width: 900px; margin: 40px auto; padding: 0 20px; }
        h1    { color: #e65c00; }
        .card { background-color: #fff; border: 1px solid #f0dcc8; padding: 20px; margin-bottom: 24px; }
        .card h2  { color: #e65c00; margin-bottom: 4px; }
        .meta     { font-size: 0.85rem; color: #888; margin-bottom: 12px; }
        h4        { margin: 10px 0 6px; color: #555; }
        ul, ol    { padding-left: 20px; }
        li        { margin-bottom: 4px; font-size: 0.95rem; }
      </style>
    </head>
    <body>
      <h1>&#127859; Recipe Book</h1>
      <xsl:for-each select="recipes/recipe">
        <div class="card">
          <h2><xsl:value-of select="title"/></h2>
          <p class="meta">
            &#127860; <xsl:value-of select="category"/> &#160;|&#160;
            &#9201; <xsl:value-of select="cookingtime"/>
          </p>
          <h4>Ingredients</h4>
          <ul>
            <xsl:for-each select="ingredients/item">
              <li><xsl:value-of select="."/></li>
            </xsl:for-each>
          </ul>
          <h4>Preparation Steps</h4>
          <ol>
            <xsl:for-each select="steps/step">
              <li><xsl:value-of select="."/></li>
            </xsl:for-each>
          </ol>
        </div>
      </xsl:for-each>
    </body>
    </html>
  </xsl:template>
</xsl:stylesheet>

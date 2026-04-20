<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html"/>

  <xsl:template match="/">
    <html>
    <head>
      <title>Weather Data</title>
      <style>
        body  { font-family: Arial, sans-serif; background: #e8f4fc; max-width: 800px; margin: 40px auto; }
        h1    { color: #1a73e8; }
        table { width: 100%; border-collapse: collapse; background: #fff; border-radius: 8px; overflow: hidden; }
        th    { background: #1a73e8; color: #fff; padding: 12px; text-align: left; }
        td    { padding: 10px 12px; border-bottom: 1px solid #dce8f5; }
        tr:hover td { background: #f0f7ff; }
      </style>
    </head>
    <body>
      <h1>&#127780; Weather Report</h1>
      <table>
        <tr>
          <th>City</th>
          <th>Temperature</th>
          <th>Humidity</th>
          <th>Wind Speed</th>
          <th>Condition</th>
        </tr>
        <xsl:for-each select="weatherdata/city">
          <tr>
            <td><xsl:value-of select="@name"/></td>
            <td><xsl:value-of select="temperature"/> <xsl:value-of select="temperature/@unit"/></td>
            <td><xsl:value-of select="humidity"/> <xsl:value-of select="humidity/@unit"/></td>
            <td><xsl:value-of select="windspeed"/> <xsl:value-of select="windspeed/@unit"/></td>
            <td><xsl:value-of select="condition"/></td>
          </tr>
        </xsl:for-each>
      </table>
    </body>
    </html>
  </xsl:template>
</xsl:stylesheet>

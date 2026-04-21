<?xml version="1.0" encoding="UTF-8"?>

<!-- This XSL styles weather.xml when you open it directly in the browser -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html"/>

  <!-- match the root element and build the page -->
  <xsl:template match="/">
    <html>
    <head>
      <title>Weather Data</title>
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css"/>
      <style>
        body  { font-family: Arial, sans-serif; background-color: #e8f4fc; max-width: 800px; margin: 40px auto; }
        h1    { color: #1a73e8; }
        table { width: 100%; border-collapse: collapse; background-color: #fff; }
        th    { background-color: #1a73e8; color: #fff; padding: 12px; text-align: left; }
        td    { padding: 10px 12px; border-bottom: 1px solid #dce8f5; }
        tr:hover td { background-color: #f0f7ff; }
      </style>
    </head>
    <body>
      <h1><i class="fa fa-cloud-sun"></i> Weather Report</h1>

      <!-- one row per city -->
      <table>
        <tr>
          <th>City</th>
          <th>Temperature</th>
          <th>Humidity</th>
          <th>Wind Speed</th>
          <th>Condition</th>
        </tr>

        <!-- loop through each city in the XML -->
        <xsl:for-each select="weatherdata/city">
          <tr>
            <td><xsl:value-of select="@name"/></td>
            <!-- show the value and its unit together e.g. 32 °C -->
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

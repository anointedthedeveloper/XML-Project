<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html"/>

  <xsl:template match="/">
    <html>
    <head>
      <title>Address Book</title>
      <style>
        body { font-family: Arial, sans-serif; max-width: 700px; margin: 40px auto; }
        h1   { color: #333; }
        table { width: 100%; border-collapse: collapse; }
        th   { background: #4a90d9; color: #fff; padding: 10px; text-align: left; }
        td   { padding: 9px 10px; border-bottom: 1px solid #ddd; }
        tr:hover td { background: #f0f7ff; }
      </style>
    </head>
    <body>
      <h1>&#128100; Address Book</h1>
      <table>
        <tr><th>Name</th><th>Phone</th><th>Email</th></tr>
        <xsl:for-each select="addressbook/contact">
          <tr>
            <td><xsl:value-of select="name"/></td>
            <td><xsl:value-of select="phone"/></td>
            <td><a href="mailto:{email}"><xsl:value-of select="email"/></a></td>
          </tr>
        </xsl:for-each>
      </table>
    </body>
    </html>
  </xsl:template>
</xsl:stylesheet>

<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="xml" version="1.0"
   omit-xml-declaration="no"
   encoding="ISO-8859-1"
   doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN"
   doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"
   indent="yes"
   media-type="text/html"
   />

<xsl:template match="/">
  <html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en"><xsl:text>
  </xsl:text>
  <head>
  <title><xsl:value-of select="/webpage/contactinfo/name"/></title><xsl:text>
  </xsl:text>
  <meta http-equiv="Content-type" content="text/html charset=ISO-8859-1" /><xsl:text>
  </xsl:text>
  </head><xsl:text>
  </xsl:text>
  <body bgcolor="FFFFFF"><xsl:text>
  </xsl:text>
<h1><font face="arial,helvetica"><xsl:value-of select="/webpage/contactinfo/name"/></font></h1><xsl:text>
  </xsl:text>

<table width="100%">
<tr>
<td valign="top" width="25%">
<table border="0">
<tr><td>
<font face="arial,helvetica">home</font>
</td></tr>
<tr><td>
<a href="publ_en.html"><font face="arial,helvetica"><b>publications</b></font></a>
</td></tr>
<tr><td>
<a href="doc_en.html"><font face="arial,helvetica"><b>teaching</b></font></a>
</td></tr>
<tr><td>
<a href="off_en.html"><font face="arial,helvetica"><b>office hours</b></font></a>
</td></tr>
<tr><td><xsl:text> </xsl:text> </td></tr>
<tr><td><xsl:text> </xsl:text> </td></tr>
<xsl:for-each select="/webpage/extra-links/*">
<xsl:if test="./@lang='en'"><tr><td><font face="arial,helvetica" size="-1"><b>
<a href="{./@url}"><xsl:value-of select="."/></a></b></font></td></tr></xsl:if>
</xsl:for-each>
<tr><td><xsl:text> </xsl:text> </td></tr>
<tr><td><xsl:text> </xsl:text> </td></tr>
<tr><td>
<a href="home_ct.html">
<font face="arial,helvetica"><b>en català</b></font></a>
</td></tr>
</table>
</td>
<td valign="top">
  
<!-- <xsl:apply-templates select="webpage/publications"/> -->
<!-- <xsl:apply-templates select="webpage/officehours"/> -->
<xsl:apply-templates select="webpage/contactinfo"/> 
<!-- <xsl:apply-templates select="webpage/teaching"/> -->
  <xsl:text>
  </xsl:text>
</td>
</tr>
</table> <div align="right"><br /><br />
      <a href="http://validator.w3.org/check/referer"><img
         src="images/valid-xhtml10.gif"
         alt="XHTML 1.0 valid!" border="0"/></a>
          <br /> <br /> 
</div>
</body><xsl:text>
  </xsl:text>
  </html>
</xsl:template>


<xsl:template match="contactinfo">
<p><font face="arial,helvetica"><xsl:text>Full professor</xsl:text></font></p>
<img src="images/{./picture/text()}" alt="Picture of {./name/text()}"/>
<h2><font face="arial,helvetica"><xsl:text>Contact information</xsl:text></font></h2>
<p><font face="arial,helvetica"><b>Postal address: </b></font></p>
<xsl:apply-templates select="postaladdress"/>
<p>
<font face="arial,helvetica"><b>Phone</b>: <xsl:value-of select="phone"/> </font>
</p>
<p>
<font face="arial,helvetica"><b>Fax</b>: <xsl:value-of select="fax"/></font>
</p>
<p>
<font face="arial,helvetica"><b>E-mail address </b>:</font> <a href="mailto:{./emailaddress/text()}"><tt><xsl:value-of select="emailaddress"/></tt></a>
</p>
</xsl:template>

<xsl:template match="postaladdress">
<table>
<xsl:for-each select="line">
<xsl:choose>
<xsl:when test="boolean(string-length(./@url))">
<tr><td><font face="arial,helvetica"><a href="{./@url}"><xsl:value-of
select="."/></a></font></td></tr>
</xsl:when>
<xsl:otherwise><tr><td><font face="arial,helvetica"><xsl:value-of
select="."/></font></td></tr>
</xsl:otherwise>
</xsl:choose>
</xsl:for-each>
</table>
</xsl:template>


<xsl:template match="highlight">
<strong><apply-templates/></strong>
</xsl:template>

</xsl:stylesheet>


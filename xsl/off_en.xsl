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
  <title>Mikel L. Forcada</title><xsl:text>
  </xsl:text>
  <meta http-equiv="Content-type" content="text/html charset=ISO-8859-1" /><xsl:text>
  </xsl:text>
  </head><xsl:text>
  </xsl:text>
  <body bgcolor="FFFFFF"><xsl:text>
  </xsl:text>
<h1><font face="arial,helvetica">Mikel L. Forcada</font></h1><xsl:text>
  </xsl:text>

<table width="100%">
<tr>
<td valign="top" width="25%">
<table border="0">
<tr><td>
<a href="home_en.html"><font face="arial,helvetica"><b>home</b></font></a>
</td></tr>
<tr><td>
<a href="publ_en.html"><font face="arial,helvetica"><b>publications</b></font></a>
</td></tr>
<tr><td>
<a href="doc_en.html"><font face="arial,helvetica"><b>teaching</b></font></a>
</td></tr>
<tr><td>
<font face="arial,helvetica">office hours</font>
</td></tr>
<tr><td><xsl:text> </xsl:text> </td></tr>
<tr><td><xsl:text> </xsl:text> </td></tr>
<xsl:for-each select="/webpage/extra-links/*">
<xsl:if test="./@lang='en'"><tr><td><font face="arial,helvetica"><b>
<a href="{./@url}"><xsl:value-of select="."/></a></b></font></td></tr></xsl:if>
</xsl:for-each>
<tr><td><xsl:text> </xsl:text> </td></tr>
<tr><td><xsl:text> </xsl:text> </td></tr>
<tr><td>
<a href="off_ct.html">
<font face="arial,helvetica"><b>en català</b></font></a>
</td></tr>
</table>
</td>
<td valign="top">
  
<!-- <xsl:apply-templates select="webpage/publications"/> -->
<xsl:apply-templates select="webpage/officehours"/> 
<!-- <xsl:apply-templates select="webpage/contactinfo"/> -->
  <xsl:text>
  </xsl:text>
</td>
</tr>
</table> <div align="right"><br /><br />
      <a href="http://validator.w3.org/check/referer"><img
         src="images/valid-xhtml10.gif"
         alt="XHTML 1.0 valid!" border="0" /></a><br /><br /></div>
  </body><xsl:text>
  </xsl:text>
  </html>
</xsl:template>


   <xsl:template match="officehours">  
   <h2><font face="arial,helvetica"><xsl:text>Office hours (valid until </xsl:text>
   <xsl:value-of select="validity"/><xsl:text>)</xsl:text></font></h2>
   <ul>
   <xsl:for-each select="segment">
   <li>
   <font face="arial,helvetica">
   <xsl:if test=".//dayofweek/text()=1">Monday</xsl:if>
   <xsl:if test=".//dayofweek/text()=2">Tuesday</xsl:if>
   <xsl:if test=".//dayofweek/text()=3">Wednesday</xsl:if>
   <xsl:if test=".//dayofweek/text()=4">Thursday</xsl:if>
   <xsl:if test=".//dayofweek/text()=5">Friday</xsl:if>
   <xsl:text>, </xsl:text><xsl:value-of select="hour"/>
   </font>
   </li>
   </xsl:for-each>
   </ul>
   </xsl:template>


</xsl:stylesheet>


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
<a href="home_en.html"><font face="arial,helvetica"><b>home</b></font></a>
</td></tr>
<tr><td>
<a href="publ_en.html"><font face="arial,helvetica"><b>publications</b></font></a>
</td></tr>
<tr><td>
<font face="arial,helvetica">teaching</font>
</td></tr>
<tr><td>
<a href="off_en.html"><font face="arial,helvetica"><b>office hours</b></font></a>
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
<a href="doc_ct.html">
<font face="arial,helvetica"><b>en català</b></font></a>
</td></tr>
</table>
</td>
<td>
  
<!--<xsl:apply-templates select="webpage/publications"/> -->
<!-- <xsl:apply-templates select="webpage/officehours"/> -->
<!-- <xsl:apply-templates select="webpage/contactinfo"/> -->
<xsl:apply-templates select="webpage/teaching"/>
  <xsl:text>
  </xsl:text>
</td>
</tr>
</table>
 <div align="right"><br /><br />
      <a href="http://validator.w3.org/check/referer"><img
         src="images/valid-xhtml10.gif"
         alt="XHTML 1.0 valid!" border="0" /></a><br /><br /></div>  
</body><xsl:text>
  </xsl:text>
  </html>
</xsl:template>


   <xsl:template match="teaching"> 
   <h2><font face="arial,helvetica"><xsl:text>Teaching (academic year </xsl:text> 
   <xsl:value-of select="academicyear"/><xsl:text>)</xsl:text></font></h2>
   <xsl:for-each select="subject">
   <table bgcolor="EEEEEE">
   <tr><td  valign="top"><font face="arial,helvetica"><b>Subject:</b></font></td>
   <xsl:choose>
   <xsl:when test="boolean(count(url))">
   <td  valign="top"><a href="{url/text()}"><font face="arial,helvetica"><b><xsl:value-of select="name"/></b></font></a></td>
   </xsl:when>
   <xsl:otherwise><td  valign="top"><font face="arial,helvetica"><b><xsl:value-of
   select="name"/></b></font></td></xsl:otherwise> 
   </xsl:choose>
     </tr>
   <tr><td  valign="top"><font face="arial,helvetica"><b>English name:</b></font></td>
   <td valign="top"><font face="arial,helvetica"><i><xsl:value-of select="englishname"/></i></font></td>
   </tr>
   <tr><td valign="top"><font face="arial,helvetica"><b>Degree:</b></font></td>
   <td valign="top"><font face="arial,helvetica"><i><xsl:value-of
   select="englishdegree"/></i></font></td>
   </tr>
   <tr><td></td></tr>
   </table>
   </xsl:for-each>
   </xsl:template>


</xsl:stylesheet>


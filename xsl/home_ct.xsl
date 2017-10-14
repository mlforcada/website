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
  <html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ca" lang="ca"><xsl:text>
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
<font face="arial,helvetica">principal</font>
</td></tr>
<tr><td>
<a href="publ_ct.html"><font face="arial,helvetica"><b>publicacions</b></font></a>
</td></tr>
<tr><td>
<a href="doc_ct.html"><font face="arial,helvetica"><b>doc�ncia</b></font></a>
</td></tr>
<tr><td>
<a href="off_ct.html"><font face="arial,helvetica"><b>assist�ncia a l'alumnat</b></font></a>
</td></tr>
<tr><td><xsl:text> </xsl:text> </td></tr>
<tr><td><xsl:text> </xsl:text> </td></tr>
<xsl:for-each select="/webpage/extra-links/*">
<xsl:if test="./@lang='ca'"><tr><td><font face="arial,helvetica"><b>
<a href="{./@url}"><xsl:value-of select="."/></a></b></font></td></tr></xsl:if>
</xsl:for-each>
<tr><td><xsl:text> </xsl:text> </td></tr>
<tr><td><xsl:text> </xsl:text> </td></tr>
<tr><td>
<a href="home_en.html">
<font face="arial,helvetica"><b>in English</b></font></a>
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
</table> <div align="right"><br />
      <a href="http://validator.w3.org/check/referer"><img
         src="images/valid-xhtml10.gif"
         alt="XHTML 1.0 valid!" border="0" /></a><br /><br /></div>
  </body><xsl:text>
  </xsl:text>
  </html>
</xsl:template>


<xsl:template match="contactinfo">
<p><font face="arial,helvetica"><xsl:text>Catedr�tic d'universitat (Llenguatges i Sistemes Inform�tics)</xsl:text></font></p>
<img src="images/{./picture/text()}" alt="Foto de {./name/text()}"/>
<h2><font face="arial,helvetica"><xsl:text>Informaci� de contacte</xsl:text></font></h2>
<p><font face="arial,helvetica"><b>Adre�a postal: </b></font></p>
<xsl:apply-templates select="postaladdress"/>
<p>
<font face="arial,helvetica"><b>Tel�fon</b>: <xsl:value-of select="phone"/> 
</font></p>
<p>
<font face="arial,helvetica"><b>Fax</b>: <xsl:value-of select="fax"/> 
</font></p>
<p>
<font face="arial,helvetica"><b>Adre�a electr�nica </b>:</font> <a href="mailto:{./emailaddress/text()}"><tt><xsl:value-of select="emailaddress"/></tt></a>
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


</xsl:stylesheet>


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
<a href="home_ct.html"><font face="arial,helvetica"><b>principal</b></font></a>
</td></tr>
<tr><td>
<font face="arial,helvetica">publicacions</font>
</td></tr>
<tr><td>
<a href="doc_ct.html"><font face="arial,helvetica"><b>docència</b></font></a>
</td></tr>
<tr><td>
<a href="off_ct.html"><font face="arial,helvetica"><b>assistència a l'alumnat</b></font></a>
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
<a href="publ_en.html">
<font face="arial,helvetica"><b>in English</b></font></a>
</td></tr>
</table>
</td>
<td>
  
<xsl:apply-templates select="webpage/publications"/>
<!-- <xsl:apply-templates select="webpage/officehours"/> -->
<!-- <xsl:apply-templates select="webpage/contactinfo"/> -->
<!-- <xsl:apply-templates select="webpage/teaching"/> -->
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

<xsl:template match="publications">
  <h1><font face="arial,helvetica">Publicacions</font></h1>
    <xsl:for-each select="inproceedings|article|inbook|book|misc">
      <xsl:sort select=".//year/text()"/>
      <xsl:choose>
        <xsl:when test="position()=1">
 <font face="arial,helvetica"><a href="#{.//year}"><xsl:value-of select=".//year"/></a><xsl:text> </xsl:text></font>
        </xsl:when>
        <xsl:when test="not(preceding-sibling::node()//year/text()=.//year/text())">
        <font face="arial,helvetica"><a href="#{.//year}"><xsl:value-of  select=".//year"/></a><xsl:text> </xsl:text></font>
        </xsl:when>
        <xsl:otherwise/>
      </xsl:choose>
    </xsl:for-each>
    <xsl:for-each select="inproceedings|article|inbook|book|misc">
      <xsl:sort select=".//year/text()"  order="descending"/>
      <xsl:choose>
        <xsl:when test="position()=1">
          <xsl:text>
          </xsl:text><a name="{.//year}"></a><h2><font face="arial,helvetica"><xsl:value-of select=".//year"/></font></h2><xsl:text>
          </xsl:text>
        </xsl:when>
        <xsl:when test="not(preceding-sibling::node()//year/text()=.//year/text())">
          <xsl:text>
          </xsl:text><h2><font face="arial,helvetica"><a name="{.//year}"></a><xsl:value-of select=".//year"/></font></h2><xsl:text>
          </xsl:text>
        </xsl:when>
        <xsl:otherwise/>
      </xsl:choose>
      <xsl:apply-templates select="."/>
    </xsl:for-each>
</xsl:template>




  <xsl:template match="inproceedings">
  <xsl:text>
  </xsl:text>
  <p><font face="arial,helvetica"><xsl:apply-templates select="author"/> 
      <xsl:apply-templates select="title"/>
      <xsl:text>, in </xsl:text>
      <xsl:apply-templates select="editors"/>
      <xsl:apply-templates select="booktitle"/>
      <xsl:apply-templates select="note"/><xsl:text>, </xsl:text>
      <xsl:apply-templates select="series"/>
      <xsl:apply-templates select="volume"/>
      <xsl:apply-templates select="pages"/>
      <xsl:if test="boolean(count(pdf-available))">
      <xsl:text> </xsl:text><a href="docum/{./@key}.pdf"><b>[PDF]</b></a><xsl:text> </xsl:text>
      </xsl:if>
      <xsl:if test="boolean(count(ps-available))">
      <xsl:text> </xsl:text><a
  href="docum/{./@key}.ps"><b>[PS]</b></a><xsl:text>
  </xsl:text>
      </xsl:if>
      <xsl:if test="boolean(count(pdfslides-available))">
      <xsl:text> </xsl:text><a
  href="docum/{./@key}.slides.pdf"><b>[transp. PDF]</b></a><xsl:text>
  </xsl:text>
      </xsl:if>
  </font></p>
  <xsl:text>
  </xsl:text>
  </xsl:template> 

  <xsl:template match="inbook">
  <xsl:text>
  </xsl:text>
  <p><font face="arial,helvetica"><xsl:apply-templates select="author"/> 
      <xsl:apply-templates select="title"/>
      <xsl:text>, in </xsl:text>
      <xsl:apply-templates select="editors"/>
      <xsl:apply-templates select="booktitle"/>
      <xsl:apply-templates select="note"/><xsl:text>, </xsl:text>
      <xsl:apply-templates select="series"/>
      <xsl:apply-templates select="volume"/> 
      <xsl:apply-templates select="pages"/>
      <xsl:if test="boolean(count(pdf-available))">
      <xsl:text> </xsl:text><a href="docum/{./@key}.pdf"><b>[PDF]</b></a><xsl:text> </xsl:text>
      </xsl:if>
      <xsl:if test="boolean(count(ps-available))">
      <xsl:text> </xsl:text><a
  href="docum/{./@key}.ps"><b>[PS]</b></a><xsl:text>
  </xsl:text>
      </xsl:if>
      <xsl:if test="boolean(count(pdfslides-available))">
      <xsl:text> </xsl:text><a
  href="docum/{./@key}.slides.pdf"><b>[transp. PDF]</b></a><xsl:text>
  </xsl:text>
      </xsl:if>
  </font></p>
  <xsl:text>
  </xsl:text>
  </xsl:template> 

  <xsl:template match="book">
  <xsl:text>
  </xsl:text>
  <p><font face="arial,helvetica"><xsl:apply-templates select="author"/> 
      <xsl:apply-templates select="title"/>
      <xsl:apply-templates select="note"/>
      <xsl:text> (</xsl:text><xsl:apply-templates select="address"/>
      <xsl:text>: </xsl:text><xsl:apply-templates select="publisher"/>
      <xsl:text>)</xsl:text>
      <xsl:if test="boolean(count(pdf-available))">
      <xsl:text> </xsl:text><a href="docum/{./@key}.pdf"><b>[PDF]</b></a>
      </xsl:if>
      <xsl:if test="boolean(count(ps-available))">
      <xsl:text> </xsl:text><a
  href="docum/{./@key}.ps"><b>[PS]</b></a><xsl:text>
  </xsl:text>
      </xsl:if>
      <xsl:if test="boolean(count(pdfslides-available))">
      <xsl:text> </xsl:text><a
  href="docum/{./@key}.slides.pdf"><b>[transp. PDF]</b></a><xsl:text>
  </xsl:text>
      </xsl:if>
  </font></p>
  <xsl:text>
  </xsl:text>
  </xsl:template> 




  <xsl:template match="article">
  <xsl:text>
  </xsl:text>
  <p><font face="arial,helvetica"><xsl:apply-templates select="author"/>
      <xsl:apply-templates select="title"/><xsl:text>, </xsl:text>
      <xsl:apply-templates select="journal"/><xsl:text>, </xsl:text>
      <xsl:apply-templates select="note"/>

      <xsl:apply-templates select="volume"/>
      <xsl:apply-templates select="number"/>
      <xsl:apply-templates select="pages"/>
      <xsl:if test="boolean(count(pdf-available))">
      <xsl:text> </xsl:text><a href="docum/{./@key}.pdf"><b>[PDF]</b></a><xsl:text> </xsl:text>
      </xsl:if>
      <xsl:if test="boolean(count(ps-available))">
      <xsl:text> </xsl:text><a
  href="docum/{./@key}.ps"><b>[PS]</b></a><xsl:text>
  </xsl:text>
      </xsl:if>
            <xsl:if test="boolean(count(pdfslides-available))">
      <xsl:text> </xsl:text>
      <a href="docum/{./@key}.slides.pdf"><b>[transp. PDF]</b></a>
      </xsl:if>
  </font></p>
  <xsl:text>
  </xsl:text>
  </xsl:template> 

  <xsl:template match="misc">
  <xsl:text>
  </xsl:text>
  <p><font face="arial,helvetica"><xsl:apply-templates select="author"/>
      <xsl:apply-templates select="title"/><xsl:text>, </xsl:text>
      <xsl:apply-templates select="howpublished"/>
      <xsl:apply-templates select="note"/>
      <xsl:if test="boolean(count(pdf-available))">
      <xsl:text> </xsl:text><a href="docum/{./@key}.pdf"><b>[PDF]</b></a><xsl:text> </xsl:text>
      </xsl:if>
      <xsl:if test="boolean(count(ps-available))">
      <xsl:text> </xsl:text><a
  href="docum/{./@key}.ps"><b>[PS]</b></a><xsl:text>
  </xsl:text>
      </xsl:if>
            <xsl:if test="boolean(count(pdfslides-available))">
      <xsl:text> </xsl:text>
      <a href="docum/{./@key}.slides.pdf"><b>[PDF slides]</b></a>
      </xsl:if>
  </font></p>
  <xsl:text>
  </xsl:text>
  </xsl:template>

  <xsl:template match="editors">
  <xsl:value-of select="current()"/><xsl:text>, ed., </xsl:text>
  </xsl:template>

  <xsl:template match="note">
  (<xsl:apply-templates/>)
  </xsl:template>

  <xsl:template match="howpublished">
  (<xsl:apply-templates/>)
  </xsl:template>

  <xsl:template match="noteurl">
  <a href="{current()/text()}"><xsl:value-of select="current()"/></a>
  </xsl:template>

  <xsl:template match="number">  
  <xsl:text>:</xsl:text>
  <xsl:value-of select="current()"/>
  </xsl:template>

  <xsl:template match="author">  
  <xsl:value-of select="current()"/>,
  </xsl:template>

  <xsl:template match="journal">  
  <i><xsl:value-of select="current()"/></i>
  </xsl:template>

  <xsl:template match="booktitle">  
  <i><xsl:value-of select="current()"/></i>
  </xsl:template>

  <xsl:template match="book/title">  
  <i><xsl:value-of select="current()"/></i>
  </xsl:template>

  <xsl:template match="title">  
  <xsl:text>"</xsl:text> 
  <xsl:value-of select="current()"/>
  <xsl:text>"</xsl:text> 
  </xsl:template>

  <xsl:template match="article/volume">  
  <b><xsl:value-of select="current()"/></b>
  </xsl:template>

  <xsl:template match="inproceedings/volume">  
  <xsl:text>vol. </xsl:text><xsl:value-of
  select="current()"/><xsl:text>, </xsl:text>
  </xsl:template>

  <xsl:template match="inproceedings/series">  
  <xsl:text>Ser. </xsl:text><i><xsl:value-of
  select="current()"/></i><xsl:text>, </xsl:text>
  </xsl:template>

  <xsl:template match="inbook/volume">  
  <xsl:text>vol. </xsl:text><xsl:value-of
  select="current()"/><xsl:text>, </xsl:text>
  </xsl:template>

  <xsl:template match="inbook/series">  
  <xsl:text>Ser. </xsl:text><i><xsl:value-of
  select="current()"/></i><xsl:text>, </xsl:text>
  </xsl:template>

   <xsl:template match="inproceedings/pages">  
   <xsl:text>p. </xsl:text><xsl:value-of select="current()"/>
   </xsl:template>

   <xsl:template match="article/pages">  
   <xsl:text>, </xsl:text><xsl:value-of select="current()"/>
   </xsl:template>


</xsl:stylesheet>


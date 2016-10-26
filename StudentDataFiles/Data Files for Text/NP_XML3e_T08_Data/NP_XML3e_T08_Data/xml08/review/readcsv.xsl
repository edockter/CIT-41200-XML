<?xml version="1.0" encoding="UTF-8" ?>
<!--
   New Perspectives on XML, 3rd Edition
   Tutorial 8
   Review Assignment

   Style Sheet to convert CSV to XML


   Filename:         readcsv.xsl
   Supporting Files: 
-->

<xsl:stylesheet version="2.0"
     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
     xmlns:xs="http://www.w3.org/2001/XMLSchema"
     exclude-result-prefixes="xs">

   <xsl:output method="xml" encoding="UTF-8" indent="yes" />


   <xsl:param name="csvSource" as="xs:string" />
   <xsl:param name="main" as="xs:string" />
   <xsl:param name="entry" as="xs:string" />

   <xsl:variable name="dataText" select="unparsed-text($csvSource)" as="xs:string" />

   <xsl:template name="csvTransform">
      <xsl:variable name="lines" select="tokenize($dataText, '\r?\n')" as="xs:string*" />
      <xsl:variable name="elements" select="tokenize($lines[1], ',\s*')" as="xs:string+" />

      <xsl:element name="{$main}">
         <xsl:for-each select="$lines[position()>1]">

            <xsl:element name="{$entry}">
               <xsl:variable name="dataValues" select="tokenize(., ',\s*')" as="xs:string+" />
                   
               <xsl:for-each select="$elements">
                  <xsl:variable name="elemName" select="." />
                  <xsl:element name="{replace($elemName, '\s', '_')}">
                     <xsl:value-of select="$dataValues[index-of($elements, $elemName)]" />
                  </xsl:element>
               </xsl:for-each>

            </xsl:element>

         </xsl:for-each>
      </xsl:element>

   </xsl:template>

</xsl:stylesheet>

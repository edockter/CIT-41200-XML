<?xml version="1.0" encoding="UTF-8" ?>
<!--
   New Perspectives on XML, 3rd Edition
   Tutorial 6
   Case Problem 3

   Homes of Dreams Library of Templates Style Sheet

   Author: 
   Date: 

   Filename:         hdfunctions.xsl
   Supporting Files: 
-->

<xsl:stylesheet version="1.0"
     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
     xmlns:df="http://example.com/dates">

<df:months>
   <m>January</m><m>February</m><m>March</m><m>April</m>
   <m>May</m><m>June</m><m>July</m><m>August</m><m>September</m>
   <m>October</m><m>November</m><m>December</m>
</df:months>

<xsl:variable name="monthNames" 
  select="document('')/xsl:stylesheet/df:months/m"/>

<xsl:template name="formatDate">
  <xsl:param name="date" />

  <xsl:variable name="monthValue" 
   select="substring-before($date,'/')" />

  <xsl:variable name="dayValue" 
   select="substring-before(substring-after($date, '/'), '/')" />

  <xsl:variable name="yearValue" 
   select="substring-after(substring-after($date, '/'), '/')" />

  <xsl:value-of 
   select="concat($monthNames[number($monthValue)], ' ',
   number($dayValue), ', ', $yearValue)" />
 </xsl:template>


</xsl:stylesheet>

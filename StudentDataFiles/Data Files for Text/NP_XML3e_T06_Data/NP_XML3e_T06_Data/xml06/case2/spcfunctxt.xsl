<?xml version="1.0" encoding="UTF-8" ?>
<!--
   New Perspectives on XML, 3rd Edition
   Tutorial 6
   Case Problem 2

   Karleton Manufacturing Functions
   Author: 
   Date:   

   Filename:         spcfunctions.xsl
   Supporting Files: 
-->


<xsl:stylesheet version="1.0"
     xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template name="minimum">
   <xsl:param name="list" />
   <xsl:param name="currentMin" select="999999999" />

   <xsl:choose>
      <xsl:when test="$list">
         <xsl:variable name="first" select="$list[1]" />
         <xsl:choose>
            <xsl:when test="$first &lt; $currentMin">
               <xsl:call-template name="minimum">
                  <xsl:with-param name="list" select="$list[position() > 1]" />
                  <xsl:with-param name="currentMin" select="$first" />
               </xsl:call-template>
            </xsl:when>
            <xsl:otherwise>
               <xsl:call-template name="minimum">
                  <xsl:with-param name="list" select="$list[position() > 1]" />
                  <xsl:with-param name="currentMin" select="$currentMin" />
               </xsl:call-template>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:when>
      <xsl:otherwise>
         <xsl:value-of select="$currentMin" />
      </xsl:otherwise>
   </xsl:choose>
</xsl:template>


<xsl:template name="maximum">
   <xsl:param name="list" />
   <xsl:param name="currentMax" select="-999999999" />

   <xsl:choose>
      <xsl:when test="$list">
         <xsl:variable name="first" select="$list[1]" />
         <xsl:choose>
            <xsl:when test="$first > $currentMax">
               <xsl:call-template name="maximum">
                  <xsl:with-param name="list" select="$list[position() > 1]" />
                  <xsl:with-param name="currentMax" select="$first" />
               </xsl:call-template>
            </xsl:when>
            <xsl:otherwise>
               <xsl:call-template name="maximum">
                  <xsl:with-param name="list" select="$list[position() > 1]" />
                  <xsl:with-param name="currentMax" select="$currentMax" />
               </xsl:call-template>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:when>
      <xsl:otherwise>
         <xsl:value-of select="$currentMax" />
      </xsl:otherwise>
   </xsl:choose>
</xsl:template>


<xsl:template name="stdErr">
   <xsl:param name="list" />
   <xsl:param name="reduceList" select="$list" />
   <xsl:param name="total" select="0" />

   <xsl:choose>
      <xsl:when test="$reduceList">
         <xsl:variable name="first" select="$reduceList[1]" />
         <xsl:variable name="avg" select="sum($list) div count($list)" />
         <xsl:call-template name="stdErr">
            <xsl:with-param name="list" select="$list" />
            <xsl:with-param name="reduceList" select="$reduceList[position() > 1]" />
            <xsl:with-param name="total" select="($first - $avg)*($first - $avg) + $total" />
         </xsl:call-template>
      </xsl:when>
      <xsl:otherwise>
         <xsl:call-template name="squareRoot">
            <xsl:with-param name="number" select="$total div (count($list)*(count($list)-1))" />
         </xsl:call-template>
      </xsl:otherwise>
   </xsl:choose>
</xsl:template>

<xsl:template name="squareRoot">
   <xsl:param name="number" select="0" />
   <xsl:param name="estimate" select="1" />
   <xsl:variable name="nextEstimate" select="$estimate+($number - $estimate * $estimate) div (2 * $estimate)" />
   <xsl:variable name="diff" select="$estimate - $nextEstimate" />

   <xsl:choose>
      <xsl:when test="$diff > 0.001 or $diff &lt; -0.001">
         <xsl:call-template name="squareRoot">
            <xsl:with-param name="number" select="$number" />
            <xsl:with-param name="estimate" select="$nextEstimate" />
         </xsl:call-template>
      </xsl:when>
      <xsl:otherwise>
         <xsl:value-of select="$nextEstimate" />
      </xsl:otherwise>
   </xsl:choose>

</xsl:template>
</xsl:stylesheet>


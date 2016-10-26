<?xml version="1.0" encoding="UTF-8" ?>
<!--
   New Perspectives on XML, 3rd Edition
   Tutorial 8
   Review Assignment

   Product List Style Sheet
   Author: 
   Date:   

   Filename:         productlist.xsl
   Supporting Files: 
-->


<xsl:stylesheet version="2.0"
     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
     xmlns:xs="http://www.w3.org/2001/XMLSchema">

   <xsl:output method="html"
      doctype-system="about:legacy-compat"
      encoding="UTF-8"
      indent="yes" />


   <xsl:template match="/">
      <html>
         <head>
            <title>Recent Products</title>
            <link href="pstyles.css" rel="stylesheet" type="text/css" />
         </head>

         <body>
            <div id="wrap">
               <header>
                  <img src="iflogo.png" alt="Illuminated Fixtures" />
               </header>

               <aside>
                  CURRENT DATE: 

               </aside>

               <h1>Recently Shipped Products</h1>


             </div>
         </body>

      </html>
   </xsl:template>


   <xsl:template match="order">

   </xsl:template>


   <xsl:function name="illf:estDelivery" as="xs:date">
      <xsl:param name="dateValue" as="xs:date" />
      <xsl:param name="shipType" as="xs:string" />

      <xsl:variable name="durations" select="('P1D', 'P2D', 'P5D')" />
      <xsl:variable name="shipTypes" select="('Overnight', '2Day', '5Day')" />
      <xsl:variable name="deliveryDays" select="$durations[index-of($shipTypes, $shipType)]" />

      <xsl:variable name="deliveryDate"
        select="$dateValue + xs:dayTimeDuration($deliveryDays)" as="xs:date" />

      <xsl:sequence select="illf:noSunday($deliveryDate)" />
   </xsl:function>


   <xsl:function name="illf:getDayName" as="xs:string">
      <xsl:param name="dateValue" as="xs:date" />
      <xsl:sequence select="
       format-date($dateValue, '[FNn]')
      " />

   </xsl:function>

   <xsl:function name="illf:noSunday" as="xs:date">
      <xsl:param name="date" as="xs:date" />
      <xsl:sequence select=
         "if(illf:getDayName($date)='Sunday') 
          then $date + xs:dayTimeDuration('P1D')
          else $date
         " />
   </xsl:function>


</xsl:stylesheet>


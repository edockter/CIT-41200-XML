<?xml version="1.0" encoding="UTF-8" ?>
<!--
   New Perspectives on XML, 3rd Edition
   Tutorial 8
   Case Problem 1

   Horizons Employment Report Style Sheet
   Author: 
   Date:   

   Filename:         horizons.xsl
   Supporting Files: 
-->


<xsl:stylesheet version="2.0"
     xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

   <xsl:output method="html"
      doctype-system="about:legacy-compat"
      encoding="UTF-8"
      indent="yes" />

   <xsl:template match="/">
      <html>
         <head>
            <title>Employment Report</title>
            <link href="horizons.css" rel="stylesheet" type="text/css" />
         </head>

         <body>
            <div id="wrap">
               <header>
                  <img src="horizons.png" alt="Horizons TechNet" />
               </header>

               <h1>Employment Report</h1>


             </div>
         </body>

      </html>
   </xsl:template>


</xsl:stylesheet>


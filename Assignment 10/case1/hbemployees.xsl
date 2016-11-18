<?xml version="1.0" encoding="UTF-8" ?>
<!--
   New Perspectives on XML, 3rd Edition
   Tutorial 7
   Case Problem 1

   Harris and Barnes Style Sheet
   Author: Eric Dockter
   Date:   11/17/2016

   Filename:         hbemployees.xsl
   Supporting Files: 
-->


<xsl:stylesheet version="1.0"
     xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

   <xsl:output method="html"
      doctype-system="about:legacy-compat"
      encoding="UTF-8"
      indent="yes" />


   <xsl:template match="/">
      <html>
         <head>
            <title>Employee Report</title>
            <link href="hbstyles.css" rel="stylesheet" type="text/css" />
         </head>

         <body>
            <div id="wrap">
               <header>
                  <img src="hblogo.png" alt="Harris and Barnes" />
               </header>

               <h1>Employee Report</h1>

             </div>
         </body>

      </html>
   </xsl:template>

</xsl:stylesheet>


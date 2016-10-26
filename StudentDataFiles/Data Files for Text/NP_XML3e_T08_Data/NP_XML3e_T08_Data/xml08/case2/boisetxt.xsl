<?xml version="1.0" encoding="UTF-8" ?>
<!--
   New Perspectives on XML, 3rd Edition
   Tutorial 8
   Case Problem 2

   ICRC Style Sheet
   Author: 
   Date:   

   Filename:         boise.xsl
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
            <title>Temperature Summary</title>
            <link href="icrc.css" rel="stylesheet" type="text/css" />
         </head>

         <body>
            <div id="wrap">
               <header>
                  <img src="icrclogo.png" alt="Idaha Climate Research Council" />
               </header>

               <h1>Boise, Idaho</h1>
               <h2>Annual Temperature Summary</h2>

               <table id="annualSummary">
                  <thead>
                     <tr>
                        <th>Month</th>
                        <th>Average</th>
                        <th>Minimum</th>
                        <th>Maximum</th>
                        <th>Range</th>
                     </tr>
                  </thead>

                  <tbody>
                  </tbody>

               </table>

             </div>
         </body>

      </html>
   </xsl:template>



</xsl:stylesheet>


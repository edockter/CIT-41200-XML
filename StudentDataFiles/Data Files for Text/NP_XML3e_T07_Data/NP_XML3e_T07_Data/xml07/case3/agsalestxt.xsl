<?xml version="1.0" encoding="UTF-8" ?>
<!--
   New Perspectives on XML, 3rd Edition
   Tutorial 7
   Case Problem 3

   Asian Gardens Style Sheet
   Author: 
   Date:   

   Filename:         agsales.xsl
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
            <title>Asian Gardens Sales</title>
            <link href="agstyles.css" rel="stylesheet" type="text/css" />
         </head>

         <body>
            <div id="wrap">
               <header>
                  <img src="aglogo.png" alt="Asian Gardens" />
               </header>

               <h1>Total Revenue</h1>

               <table class="summary">

                 <thead>
                 </thead>

                 <tfoot>
                 </tfoot>

                 <tbody>
                 </tbody>

              </table>
   
             </div>
         </body>

      </html>
   </xsl:template>


</xsl:stylesheet>


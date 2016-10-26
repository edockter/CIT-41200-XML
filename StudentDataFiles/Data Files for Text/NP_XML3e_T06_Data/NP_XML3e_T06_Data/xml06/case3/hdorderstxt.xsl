<?xml version="1.0" encoding="UTF-8" ?>
<!--
   New Perspectives on XML, 3rd Edition
   Tutorial 6
   Case Problem 3

   Homes of Dreams Orders Style Sheet
   Author: 
   Date:   

   Filename:         hdorders.xsl
   Supporting Files: 
-->


<xsl:stylesheet version="1.0"
     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
     xmlns:prod="http://example.com/products"
     xmlns:cust="http://example.com/customers"
     xmlns:df="http://example.com/dates">

   <xsl:output method="html"
      doctype-system="about:legacy-compat"
      encoding="UTF-8"
      indent="yes" />


   <xsl:template match="/">
      <html>
         <head>
            <title>Customer Order</title>
            <link href="hdstyles.css" rel="stylesheet" type="text/css" />
         </head>

         <body>
            <div id="wrap">
               <header>
                  <img src="hdlogo.png" alt="Homes of Dreams" />
               </header>

               <h1>Order History</h1>

             </div>
         </body>
      </html>

   </xsl:template>



   <xsl:template match="order">
      <xsl:variable name="subTotal">
      </xsl:variable>

   </xsl:template>



   <xsl:template match="item">
   </xsl:template>

</xsl:stylesheet>


<?xml version="1.0" encoding="UTF-8" ?>
<!--
   New Perspectives on XML, 3rd Edition
   Tutorial 8
   Case Problem 3

   The Zocalo Fire Pit Style Sheet
   Author: 
   Date:   

   Filename:         zfp.xsl
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
                  <title>Customer Orders</title>
                  <link href="zfpstyles.css" rel="stylesheet" type="text/css" />
               </head>

               <body>
                  <div id="wrap">
                     <header>
                        <img src="zfplogo.png" alt="The Zocalo Fire Pit" />
                     </header>

                     <table id="customerTable">
                     </table>

                     <h1>Recent Orders</h1>
              
                   </div>
               </body>
            </html>

   </xsl:template>

   <xsl:template match="order">
       <h3>
       </h3>
       <table class="orderTable">
          <thead>
             <tr>
                <th>Product ID</th>
                <th>Product</th>
                <th>Box Size</th>
                <th>Quantity</th>
                <th>Price</th>
                <th>Total</th>
             </tr>
          </thead>

          <tfoot>
          </tfoot>

          <tbody>
          </tbody>
       </table>
   </xsl:template>


   <xsl:template match="product">
   </xsl:template>


</xsl:stylesheet>


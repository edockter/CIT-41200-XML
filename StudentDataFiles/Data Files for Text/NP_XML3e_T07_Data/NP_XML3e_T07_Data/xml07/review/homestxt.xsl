<?xml version="1.0" encoding="UTF-8" ?>
<!--
   New Perspectives on XML, 3rd Edition
   Tutorial 7
   Review Assignment

   Real Estate Listings Style Sheet
   Author: 
   Date:   

   Filename:         homes.xsl
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
            <title>Real Estate Listings</title>
            <link href="homestyles.css" rel="stylesheet" type="text/css" />
         </head>

         <body>
            <div id="wrap">
               <header>
                  <img src="homelogo.png" alt="Bowline Realty" />
               </header>

               <h1>New Listings</h1>
               <section id="style_list">
               |
                </section>

             </div>
         </body>

      </html>
   </xsl:template>


   <xsl:template match="property">
      <table class="head" cellpadding="2">
         <tr>
            <td rowspan="9" class="description">
               <xsl:value-of select="description" />
            </td>
            <th>Listing #</th>
            <td><xsl:value-of select="@rln" /></td>
            <th>Real Estate Agency</th>
         </tr>
         <tr>
            <th>Price</th>
            <td><xsl:value-of select="format-number(price,'$#,##0')" /></td>
         
            <!-- Place information about the firm here -->
            <td rowspan="4">

            </td>
         </tr>
         <tr>
            <th>Address</th>
            <td>
               <xsl:value-of select="street" /><br />
               <xsl:value-of select="city" />, <xsl:value-of select="state" />
               <xsl:text> </xsl:text><xsl:value-of select="zip" />
            </td>
         </tr>
         <tr>
            <th>Style</th>
            <td><xsl:value-of select="style" /></td>
         </tr>
         <tr>
            <th>Age</th>
            <td><xsl:value-of select="age" /></td>
         </tr>
         <tr>
            <th>Sq. Feet</th>
            <td><xsl:value-of select="sqfeet" /></td>
            <th>Agent</th>
         </tr>
         <tr>  
            <th>Baths</th>
            <td><xsl:value-of select="bathrooms" /></td>

           <!-- Place information about the agent here -->
            <td rowspan="3">

            </td>
         </tr>
         <tr>	
            <th>Bedrooms</th>
            <td><xsl:value-of select="bedrooms" /></td>
         </tr>
         <tr>
            <th>Garage</th>
            <td><xsl:value-of select="garage" /></td>
         </tr>
      </table>
   </xsl:template>


</xsl:stylesheet>


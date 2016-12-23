<?xml version="1.0" encoding="UTF-8" ?>
<!--
   New Perspectives on XML, 3rd Edition
   Tutorial 8
   Case Problem 1

   Horizons Employment Report Style Sheet
   Author: Eric Dockter
   Date:   12/8/2016

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
               <xsl:for-each-group select="document('horizons.xml')/departments/department/employees/employee" group-by="gender">
                  <table id="summary">
                     <tr>
                        <th>Gender</th>
                        <td><xsl:value-of select="current-grouping-key()" /></td>
                     </tr>
                     <tr>
                        <th>Employees</th>
                        <td><xsl:value-of select="count(current-group())" /></td>
                     </tr>
                     <tr>
                        <th>Average Compensation</th>
                        <td><xsl:value-of select="avg(('current-group()/salary'), ('current-group()/bonus'), ('current-group()/commission'))" /></td>
                     </tr>
                     <xsl:apply-templates select="current-group()"></xsl:apply-templates>
                  </table>
               </xsl:for-each-group>
             </div>
         </body>
      </html>
   </xsl:template>

   <xsl:template match="employee">
      <tr>
         <td><xsl:value-of select="@empID"/></td>
         <td><xsl:value-of select="../../department" /></td>
         <td><xsl:value-of select="./title" /></td>         
         <td><xsl:value-of select="./edLevel" /></td>
         <td><xsl:value-of select="./compensation" /></td>        
      </tr>
   </xsl:template>

</xsl:stylesheet>


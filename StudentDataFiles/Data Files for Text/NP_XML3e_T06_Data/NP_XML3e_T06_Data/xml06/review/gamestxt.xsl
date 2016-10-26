<?xml version="1.0" encoding="UTF-8" ?>
<!--
   New Perspectives on XML, 3rd Edition
   Tutorial 6
   Review Assignment

   Harpe Gaming Products Style Sheet
   Author: 
   Date:   

   Filename:         games.xsl
   Supporting Files: 
-->


<xsl:stylesheet version="1.0"
     xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
     xmlns:df="http://example.com/dateformats">

   
   <xsl:output method="html"
      doctype-system="about:legacy-compat"
      encoding="UTF-8"
      indent="yes" />

   <xsl:template match="/">
      <html>
         <head>
            <title><xsl:value-of select="games/game[@gid='bg201']/title" /></title>
            <link href="hgstyles.css" rel="stylesheet" type="text/css" />
         </head>

         <body>
            <div id="wrap">
               <header>
                  <h1>Harpe Gaming</h1>
               </header>

               <section id="gameSummary">
                  <xsl:apply-templates select="games/game[@gid='bg201']" />
               </section>

               <footer>.</footer>
             </div>
         </body>
      </html>
   </xsl:template>


   <xsl:template match="game">
      <img src="{image}" alt="" />

      <h1><xsl:value-of select="title" /></h1>
      <h2>By:
         <em><xsl:value-of select="manufacturer" /></em>
      </h2>

      <table id="summaryTable">
         <tr>
            <th>Game ID: </th>
            <td><xsl:value-of select="@gid" /></td>
         </tr>

         <tr>
            <th>List Price: </th>
            <td>
               <xsl:value-of select="price" />
            </td>
         </tr>

         <tr>
            <th>Media: </th>
            <td>
               <xsl:value-of select="media" />
            </td>
         </tr>
         <tr>
            <th>Release Date: </th>
            <td>
               <xsl:value-of select="releaseDate" />
            </td>
         </tr>
         <tr>
            <th>Age: </th>
            <td>
               <xsl:value-of select="age" />
            </td>
         </tr>
         <tr>
            <th>Players: </th>
            <td>
               <xsl:value-of select="players" />
            </td>
         </tr>
         <tr>
            <th>Time: </th>
            <td>
               <xsl:value-of select="time" />
            </td>
         </tr>
      </table>

   </xsl:template>


   <xsl:template match="review">

      <xsl:variable name="reviewerTitle"
       select="$externalReviewers/reviewer[@revid=current()/@revid]/title" />
      <xsl:variable name="reviewerURL"
       select="$externalReviewers/reviewer[@revid=current()/@revid]/url" />

   </xsl:template>


</xsl:stylesheet>


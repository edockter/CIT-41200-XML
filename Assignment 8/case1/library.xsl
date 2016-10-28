<?xml version="1.0" encoding="UTF-8" ?>
<!--
   New Perspectives on XML, 3rd Edition
   Tutorial 5
   Tutorial Case

   Denison Public Library XSLT Style Sheet
   Author: Eric Dockter
   Date:   10/27/2016

   Filename:         library.xsl
   Supporting Files: book.png, dvd.png

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
            <title>Denison Public Library</title>
            <link href="libstyles.css"
               rel="stylesheet" type="text/css" />
         </head>
         <body>
            <header>
               <h1>Denison Public Library</h1>
               <h2>Ennis, Montana</h2>
            </header>
            <section>
               <h1>Item List</h1>
               <xsl:apply-templates select="itemlist/item">
                  <xsl:sort select="title" />
               </xsl:apply-templates>
            </section>
         </body>
      </html>
   </xsl:template>

   <xsl:template match="itemlist/item">
      <article>
         <h1><xsl:value-of select="title"/></h1>
         <h2>by: <xsl:for-each select="author"></xsl:for-each></h2>
         <p>
            Type:
            <span>
               <xsl:choose>
                  <xsl:when test="type='Book'">
                     <img src="book.png" alt="Book" /> Book
                  </xsl:when>
                  <xsl:when test="type='Visual Material'">
                     <img src="film.png" alt="Film" /> Film
                  </xsl:when>
               </xsl:choose>
            </span>
         </p>
         <p>
            Tags:
            <span>
               <xsl:for-each select="subjects/subject">
                  <xsl:value-of select="."/>/
               </xsl:for-each>
            </span>
         </p>
         <p>
            Publisher:
            <span>
               <xsl:value-of select="publisher"/>
            </span>
         </p>
         <p>
            ISBN:
            <span>
               <xsl:value-of select="isbn"/>
            </span>
         </p>
         <table>
            <tr>
               <th>Location</th>
               <th>Collection</th>
               <th>Call No.</th>
               <th>Status</th>
            </tr>
            <tr>
               <td><xsl:value-of select="location"/></td>
               <td><xsl:value-of select="collection"/></td>
               <td><xsl:value-of select="callno"/></td>
               <td>
                  <xsl:value-of select="status"/>
                  <xsl:if test="status='Checked Out'">
                     (due: <xsl:value-of select="status/@return"/>)
                  </xsl:if>
               </td>
            </tr>
         </table>
      </article>
   </xsl:template>
</xsl:stylesheet>
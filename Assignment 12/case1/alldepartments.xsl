<?xml version="1.0" encoding="UTF-8" ?>
<!--
   New Perspectives on XML, 3rd Edition
   Tutorial 8
   Review Assignment

   Style Sheet to Combine Product Information

   Author: Eric Dockter
   Date:   12/8/2016

   Filename:         alldepartments.xsl
   Supporting Files: 
-->

<xsl:stylesheet version="2.0"
     xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   <xsl:output method="xml" encoding="UTF-8" indent="yes" />
  
  <xsl:template name="getEmployees">
    <xsl:variable name="depts" select="('a00', 'c01', 'd11', 'd21', 'e11', 'e21')"/>
    <xsl:element name="departments">
      <xsl:for-each select="$depts">
        <xsl:variable name="currentDept" select="." />
        <xsl:element name="department">
          <xsl:attribute name="deptID">
            <xsl:value-of select="$currentDept" />            
          </xsl:attribute>
          <xsl:variable name="deptFile" select="doc(concat('dept', $currentDept, '.xml'))"/>
          <xsl:copy-of select="$deptFile/employees"></xsl:copy-of>
          
        </xsl:element>
      </xsl:for-each>
    </xsl:element>
  </xsl:template>

</xsl:stylesheet>
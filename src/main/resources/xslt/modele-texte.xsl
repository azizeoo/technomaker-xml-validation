<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >

	<xsl:output method="text" indent="yes" />
	<xsl:variable name="newline">
		<xsl:text>
		</xsl:text>
	</xsl:variable>
	<xsl:variable name="separator-cvs">:</xsl:variable>
	<xsl:template match="/">
			<xsl:text> MESSAGES : AUTEURS : DATES </xsl:text>
			<xsl:text disable-output-escaping="yes">&amp;#10;</xsl:text>
			<xsl:apply-templates select="messages" />
	</xsl:template>
	
	<!-- Template pour la balise "messages" -->
	<xsl:template match="messages">
		<xsl:for-each select="message">
<!-- 			<xsl:sort select="date" order="ascending" /> -->
					<xsl:value-of select="contenu" />
					<xsl:value-of select="$separator-cvs" />
					<xsl:value-of select="auteur" />
					<xsl:value-of select="$separator-cvs" />
					<xsl:value-of select="date" />
					<xsl:value-of select="$newline" />
<!-- 					<xsl:text>&#10;&#13;</xsl:text> -->
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>
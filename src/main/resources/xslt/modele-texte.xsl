<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="text" indent="yes" />

	<xsl:variable name="separateur">-|-</xsl:variable>
	<xsl:variable name="nLigne"><![CDATA[<br />]]></xsl:variable>
	<xsl:template match="/">
		<xsl:text> MESSAGES -|- AUTEURS -|- DATES </xsl:text>
		<xsl:value-of select="$nLigne" />
		<xsl:apply-templates select="messages" />
	</xsl:template>

	<!-- Template pour la balise "messages" -->
	<xsl:template match="messages">
		<xsl:for-each select="message">
			<xsl:value-of select="contenu" />
			<xsl:value-of select="$separateur" />
			<xsl:value-of select="auteur" />
			<xsl:value-of select="$separateur" />
			<xsl:value-of select="date" />
			<xsl:value-of select="$nLigne" />
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>
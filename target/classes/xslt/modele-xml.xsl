<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="xml" indent="yes" />

	<xsl:template match="/">
		<xsl:apply-templates select="auteurs" />
	</xsl:template>



	<!-- Template pour la balise "auteurs" -->
	<xsl:template match="auteurs">
		<xsl:element name="auteur">

			<!-- Ceci copie normalement l'intégralité de ton élément personne -->

			<xsl:copy-of select="auteur" />

			<!-- Ici, on ajoute les éléments que tu souhaites -->

<!-- 			<xsl:element name="adresse"> -->

<!-- 				<xsl:element name="rue" /> -->

<!-- 				<xsl:element name="ville" /> -->

<!-- 				<xsl:element name="cp" /> -->

		</xsl:element>
	</xsl:template>
</xsl:stylesheet>
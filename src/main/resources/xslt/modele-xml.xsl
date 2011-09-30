<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="xml" indent="yes" />
	<xsl:key name="auteur" match="/messages/message/auteur/text()"
		use="." />
	<xsl:template match="/">
		<xsl:element name="auteurs">
			<xsl:apply-templates select="//messages" />
		</xsl:element>
	</xsl:template>



	<!-- Template pour la balise "messages" -->
	<xsl:template match="messages">
		<xsl:for-each select="/messages/message/auteur/text()">
			<xsl:variable name="temp" select="." />
			<xsl:if test="generate-id() = generate-id(key('auteur',.)[1])">
				<xsl:element name="auteur">
					<xsl:element name="nom">
						<xsl:value-of select="." />
					</xsl:element>
					<xsl:for-each select="/messages/message[auteur = $temp]">
						<xsl:element name="message">
							<xsl:attribute name="reference"><xsl:value-of
								select="@reference" />
						</xsl:attribute>
							<xsl:element name="contenu">
								<xsl:value-of select="contenu" />
							</xsl:element>
							<xsl:element name="date">
								<xsl:value-of select="date" />
							</xsl:element>
						</xsl:element>
					</xsl:for-each>
				</xsl:element>
			</xsl:if>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>
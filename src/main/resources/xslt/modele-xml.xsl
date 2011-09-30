<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="xml" indent="yes" />
	<xsl:key name="auteur" match="/messages/message/auteur/text()"
		use="." />
	<xsl:template match="/">
		<auteurs>
			<xsl:apply-templates select="//messages" />
		</auteurs>
	</xsl:template>



	<!-- Template pour la balise "messages" -->
	<xsl:template match="messages">
		<xsl:for-each select="/messages/message/auteur/text()">
			<xsl:variable name="temp" select="." />
			<xsl:if test="generate-id() = generate-id(key('auteur',.)[1])">
				<auteur>
					<nom>
						<xsl:value-of select="." />
					</nom>
					<xsl:for-each select="/messages/message[auteur = $temp]">
						<message>
							<contenu>
								<xsl:value-of select="contenu" />
							</contenu>
							<date>
								<xsl:value-of select="date" />
							</date>
						</message>
					</xsl:for-each>
				</auteur>
			</xsl:if>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>
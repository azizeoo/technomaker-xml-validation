<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<html>
			<body>
				<h1>Les informations sur les messages</h1>
				<h3>
					Date ud 1er message :
					<xsl:value-of select="messages/informationsMessages/datePremierMessage" />
				</h3>
				<h3>
					Nombre de message:
					<xsl:value-of select="messages/informationsMessages/nombreMessages" />
				</h3>
				<table border="1">
					<tr>
						<td>
							<b>Référence</b>
						</td>
						<td>
							<b>Auteur</b>
						</td>
						<td>
							<b>Date</b>
						</td>
						<td>
							<b>Contenu</b>
						</td>
					</tr>
					<xsl:apply-templates select="messages" />
				</table>
			</body>
		</html>
	</xsl:template>
	<!-- Template pour la balise "messages" -->
	<xsl:template match="messages">
		<xsl:for-each select="message">
			<xsl:sort select="date" order="ascending" />
			<tr>
				<td>
					<xsl:value-of select="@reference" />
				</td>
				<td>
					<xsl:value-of select="auteur" />
				</td>
				<td>
					<xsl:value-of select="date" />
				</td>
				<td>
					<xsl:value-of select="contenu" />
				</td>
			</tr>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>
package norsys.technomaker.xml.parser;

import org.jdom.Document;

/**
 * Classe de parcours du fichier XML pour construire l'affichage HTML.
 */
public final class MonParseurXml {

	/**
	 * Constructeur.
	 */
	private MonParseurXml() {
	}

	/**
	 * Cree le corps de la page HTML de la page a partir du fichier XML qui
	 * 
	 * @param document
	 *            fichier XML a parser.
	 * @return String contenant le code HTML de la page avec les donnees du
	 *         fichier XML.
	 */
	public static String creerCorpsPageHtml(Document document) {

		StringBuilder builder = new StringBuilder();
		builder.append("<html>");
		builder.append("<body>");

		builder.append("<h1>Parseur XML</h1>");

		// TODO Continuez ici...
		builder.append("<b>A faire...</b>");

		builder.append("</body>");
		builder.append("</html>");

		return builder.toString();
	}
}

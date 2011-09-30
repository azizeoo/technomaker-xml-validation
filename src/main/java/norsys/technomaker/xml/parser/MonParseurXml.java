package norsys.technomaker.xml.parser;

import java.util.List;

import org.jdom.Document;
import org.jdom.Element;

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
	@SuppressWarnings("unchecked")
	public static String creerCorpsPageHtml(Document document) {
		List<Element> liste;
		StringBuilder builder = new StringBuilder();
		builder.append("<html>");
		builder.append("<body>");

		builder.append("<h1>Parseur XML</h1>");
		
		liste = document.getRootElement().getChildren();
		builder.append("<h3>Date du 1er message : ");
		builder.append(document.getRootElement().getChild("informationsMessages").getChild("datePremierMessage").getValue());
		builder.append("<br/>Nombre de messages : ");
		builder.append(document.getRootElement().getChild("informationsMessages").getChild("nombreMessages").getValue());
		builder.append("</h3>");
		builder.append("<table border='1'>");
		builder.append("<tr><td><b>Reference</b></td><td><b>Auteur</b></td><td><b>Date</b></td><td><b>Contenu</b></td></tr>");
		for (Element element : liste) {
			if("message".equals(element.getName())){
				builder.append("<tr>");
				builder.append("<td>");
				builder.append(element.getAttributeValue("reference"));
				builder.append("</td>");
				builder.append("<td>");
				builder.append(element.getChild("auteur").getValue());
				builder.append("</td>");
				builder.append("<td>");
				builder.append(element.getChild("date").getValue());
				builder.append("</td>");
				builder.append("<td>");
				builder.append(element.getChild("contenu").getValue());
				builder.append("</td>");
				builder.append("</tr>");
			}
		}
		builder.append("</table>");


		builder.append("</body>");
		builder.append("</html>");

		return builder.toString();
	}
}

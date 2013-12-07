package org.musicalpatriots.xml.dao;

import java.util.List;

import javax.xml.xquery.XQConnection;

import org.musicalpatriots.xml.entity.RatingEntity;
import org.w3c.dom.Element;

public class RatingDao extends AbstractDao<RatingEntity> {

	public RatingDao(XQConnection conn) {
		super(conn);	
	}

	public RatingEntity findUserRating(String compositionId,String userRef) {
		String query = "for $composition in doc('/db/music/CompositionCollection.xml')/composition_collection/composition";
			query += " where $composition/number[id='"+compositionId+"']";
			query += " return $composition//rating[rater_ref='"+userRef+"']";
			System.out.println("findUserRating Query: "+query);
			List<RatingEntity> result = search(query);	
			System.out.println("ratingdao result: "+result);
			return result.size() != 0 ? result.get(0) : new RatingEntity();
	}
	
	public RatingEntity findById(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<RatingEntity> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void persist(RatingEntity entity) {
		String query = "";
		query += "update insert"; 
		query += " <rating>";
		query += " <rater_ref>"+entity.getRater_ref()+"</rater_ref>";
		query += " <style>"+entity.getStyle()+"</style>";
		query += " <technique>"+entity.getTechnique()+"</technique>";
		query += " <accompaniment>"+entity.getAccompaniment()+"</accompaniment>";
		query += " <rhythm>"+entity.getRhythm()+"</rhythm>";
		query += " <flexibility>"+entity.getFlexibility()+"</flexibility>";
		query += " <connections>"+entity.getConnections()+"</connections>";
		query += " <range>"+entity.getRange()+"</range>";
		query += " <comments>"+entity.getComments()+"</comments>";
		query += " <articulation>"+entity.getArticulation()+"</articulation>";
		query += " <merit>"+entity.getMerit()+"</merit>";
		query += " <total_rating>"+entity.getTotal_rating()+"</total_rating>";
		query += "</rating>";
		query += "into //composition/number[id="+entity.getCompositionId()+"]/../ratings";
		
		System.out.println("PERSIST:::: "+query);
		
		execute(query);
		
		
	}

	@Override
	protected RatingEntity readObject(Element element) {
		RatingEntity rating = new RatingEntity();
		
		
		
		System.out.println("accompaniment"+element.getElementsByTagName("accompaniment").item(0).getTextContent());
		System.out.println("articulation"+element.getElementsByTagName("articulation").item(0).getTextContent());
		System.out.println("commentselement"+element.getElementsByTagName("comments").item(0).getTextContent());
		System.out.println("setConnections"+element.getElementsByTagName("connections").item(0).getTextContent());
		System.out.println("setFlexibility"+element.getElementsByTagName("flexibility").item(0).getTextContent());
		System.out.println("setMerit"+element.getElementsByTagName("merit").item(0).getTextContent());
		System.out.println("setRange"+element.getElementsByTagName("range").item(0).getTextContent());
		System.out.println("setRater_ref"+element.getElementsByTagName("rater_ref").item(0).getTextContent());
		System.out.println("setTotal_rating"+element.getElementsByTagName("total_rating").item(0).getTextContent());
		System.out.println("setRhythm"+element.getElementsByTagName("rhythm").item(0).getTextContent());
		System.out.println("setStyle"+element.getElementsByTagName("style").item(0).getTextContent());
		System.out.println("setTechnique"+element.getElementsByTagName("technique").item(0).getTextContent());
		
		
		
		
		
		rating.setAccompaniment(element.getElementsByTagName("accompaniment").item(0).getTextContent());
		rating.setArticulation(element.getElementsByTagName("articulation").item(0).getTextContent());
		rating.setComments(element.getElementsByTagName("comments").item(0).getTextContent());
		rating.setConnections(element.getElementsByTagName("connections").item(0).getTextContent());
		rating.setFlexibility(element.getElementsByTagName("flexibility").item(0).getTextContent());
		rating.setMerit(element.getElementsByTagName("merit").item(0).getTextContent());
		rating.setRange(element.getElementsByTagName("range").item(0).getTextContent());
		rating.setRater_ref(element.getElementsByTagName("rater_ref").item(0).getTextContent());
		rating.setTotal_rating(element.getElementsByTagName("total_rating").item(0).getTextContent());
		rating.setRhythm(element.getElementsByTagName("rhythm").item(0).getTextContent());
		rating.setStyle(element.getElementsByTagName("style").item(0).getTextContent());
		rating.setTechnique(element.getElementsByTagName("technique").item(0).getTextContent());

		return rating;
	}
}

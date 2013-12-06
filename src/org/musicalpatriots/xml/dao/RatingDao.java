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
		String query = "for $composition in doc('/db/music/CompositionCollection.xml')/composition_collection/composition ";
			query += "where $composition/number[id='"+compositionId+"']";
			query += "return $composition//rating[rater_ref='"+userRef+"']";
			List<RatingEntity> result = search(query);	
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
		// TODO Auto-generated method stub		
	}

	@Override
	protected RatingEntity readObject(Element element) {
		RatingEntity rating = new RatingEntity();
		
		rating.setAccompaniment(element.getElementsByTagName("accompaniment").item(0).getTextContent());
		rating.setArticulation(element.getElementsByTagName("articulation").item(0).getTextContent());
		rating.setComments(element.getElementsByTagName("comments").item(0).getTextContent());
		rating.setConnections(element.getElementsByTagName("connections").item(0).getTextContent());
		rating.setFlexibility(element.getElementsByTagName("flexibility").item(0).getTextContent());
		rating.setMerit(element.getElementsByTagName("merit").item(0).getTextContent());
		rating.setRange(element.getElementsByTagName("range").item(0).getTextContent());
		rating.setRater_ref(element.getElementsByTagName("rater_ref").item(0).getTextContent());
		//rating.setRatingDifficulty(element.getElementsByTagName("ratingDifficulty").item(0).getTextContent());
		rating.setRhythm(element.getElementsByTagName("rhythm").item(0).getTextContent());
		rating.setStyle(element.getElementsByTagName("style").item(0).getTextContent());
		rating.setTechnique(element.getElementsByTagName("technique").item(0).getTextContent());

		return null;
	}
}

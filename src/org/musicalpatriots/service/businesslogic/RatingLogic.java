package org.musicalpatriots.service.businesslogic;

import java.util.ArrayList;
import java.util.List;

import javax.xml.xquery.XQConnection;
import javax.xml.xquery.XQDataSource;
import javax.xml.xquery.XQException;

import net.xqj.exist.ExistXQDataSource;

import org.musicalpatriots.xml.dao.CompositionDao;
import org.musicalpatriots.xml.dao.RatingDao;
import org.musicalpatriots.xml.entity.CompositionEntity;
import org.musicalpatriots.xml.entity.RatingEntity;

public class RatingLogic {
	
	public enum RateWeight {

		STYLE (5),
		TECHNIQUE (5),
		ACCOMPANIMENT (5),
		RHYTHM (4),
		FLEXIBILITY (9),
		CONNECTIONS (5),
		RANGE (9),
		ARTICULATION (6),
		MERIT (5);
		
		private int value;
		
		private RateWeight(int value) {
			this.value = value;
		}

	};

	public static double getDifficulty(int style, int technique, int accompaniment, int rhythm,
			int flexibility,int connections,int range,
			int articulation,int merit) {

		double numer = 0.0;

		double denom = 0.0;

		for(RateWeight rw : RateWeight.values()) {
			denom += rw.value;
		}

		numer =
				style*RateWeight.STYLE.value +
				technique*RateWeight.TECHNIQUE.value +
				accompaniment*RateWeight.ACCOMPANIMENT.value +
				rhythm*RateWeight.RHYTHM.value +
				flexibility*RateWeight.FLEXIBILITY.value +
				connections*RateWeight.CONNECTIONS.value +
				range*RateWeight.RANGE.value +
				articulation*RateWeight.ARTICULATION.value +
				merit*RateWeight.MERIT.value;

		return numer/denom;

	}
	
	private XQConnection getConn() throws XQException {
		XQDataSource xqs = new ExistXQDataSource();
		xqs.setProperty("serverName", "musicalpatriots.org");
		xqs.setProperty("port", "8899");
		xqs.setProperty("user", "admin");
		xqs.setProperty("password", "gmupatriots");
		XQConnection conn = xqs.getConnection();
		System.out.println("connection:" + conn);
		return conn;
	}
        
    public RatingEntity findByUserRef (String compositionId, String userRef) {
            try {
                    RatingDao dao = new RatingDao(getConn());
                    
                    RatingEntity searchResult = dao.findUserRating(compositionId, userRef);
                    //System.out.println("search result count:" + searchResult.size());
                    //System.out.println("search result title:" + searchResult.get(0).getMainTitle());
                    
                    return searchResult;
            } catch (XQException ex) {
                    ex.printStackTrace();
            }                
            return new RatingEntity();
    }
    
	public static void main(String [] args) {
		System.out.println("rating logic: "+RatingLogic.getDifficulty(1, 1, 0, 0, 0, 1, 1, 1, 1));
	}
	
	public void persistUserRating (RatingEntity ratingEntity) {
        try {
            RatingDao dao = new RatingDao(getConn());
            dao.persist(ratingEntity);

	    } catch (XQException ex) {
	            ex.printStackTrace();
	    }                
	}
	
}

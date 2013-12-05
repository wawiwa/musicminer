package org.musicalpatriots.service.businesslogic;

import java.util.ArrayList;
import java.util.List;

import javax.xml.xquery.XQConnection;
import javax.xml.xquery.XQDataSource;
import javax.xml.xquery.XQException;

import net.xqj.exist.ExistXQDataSource;

import org.musicalpatriots.xml.dao.CompositionDao;
import org.musicalpatriots.xml.entity.CompositionEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

public class DomainLogic {
	
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
        
    public List<CompositionEntity> findByTitle (String title) {
            try {
                    CompositionDao dao = new CompositionDao(getConn());
                    
                    List<CompositionEntity> searchResult = dao.findByTitle(title);
                    //System.out.println("search result count:" + searchResult.size());
                    //System.out.println("search result title:" + searchResult.get(0).getMainTitle());
                    
                    return searchResult;
            } catch (XQException ex) {
                    ex.printStackTrace();
            }                
            return new ArrayList<CompositionEntity>();

    }
    
    public List<CompositionEntity> findByParams (String author, String title, String era, String genre, String publisher) {
        try {
        		CompositionDao dao = new CompositionDao(getConn());
                
                List<CompositionEntity> searchResult = dao.findByParams(author, title, era, genre, publisher);
                //System.out.println("search result count:" + searchResult.size());
                //System.out.println("search result title:" + searchResult.get(0).getMainTitle());
                
                return searchResult;
        } catch (XQException ex) {
                ex.printStackTrace();
        }                
        return new ArrayList<CompositionEntity>();
    }
    
    public CompositionEntity findById (String number) {
        try {
        		CompositionDao dao = new CompositionDao(getConn());
                
                CompositionEntity searchResult = dao.getById(number);
                //System.out.println("search result count:" + searchResult.size());
                //System.out.println("search result title:" + searchResult.get(0).getMainTitle());
                
                return searchResult;
        } catch (XQException ex) {
                ex.printStackTrace();
        }                
        return new CompositionEntity();
    }

}
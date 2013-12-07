package org.musicalpatriots.xml.dao;

import java.util.List;

import javax.xml.xquery.XQConnection;

import org.musicalpatriots.xml.dao.AbstractDao;
import org.musicalpatriots.xml.entity.CompositionEntity;
import org.w3c.dom.Element;

public class CompositionDao extends AbstractDao<CompositionEntity> {

	public CompositionDao(XQConnection conn) {
		super(conn);	
	}

	public CompositionEntity findById(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<CompositionEntity> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void persist(CompositionEntity entity) {
		
	}
	
	public CompositionEntity getById(String id) {
		String query = "for $composition in doc('/db/music/CompositionCollection.xml')/composition_collection/composition ";
		  query += " let $author:=$composition//author/name";
		  query += " let $title:=$composition//main_title";
		  query += " let $era:=$composition//stylistic_era";
		  query += " let $genre:=$composition//genre";
		  query += " let $publisher:=$composition//publisher/name";
		  query += " let $number:=$composition//number/id";
		query += " where $composition/number[id='"+id+"']";
		  query += " return <composition>";
		  query += " <title>{xs:string($title)}</title>";
		  query += " <author>{xs:string($author)}</author>";
		  query += " <genre>{xs:string($genre)}</genre>";
		  query += " <era>{xs:string($era)}</era>";
		  query += " <publisher>{xs:string($publisher)}</publisher>";
		  query += " <number>{xs:string($number)}</number>";
		  query += " </composition>";
		System.out.println("query: "+query);
		List<CompositionEntity> result = search(query);
		if(result.size() == 0) return new CompositionEntity();
		return result.get(0);
	}

	
	public List<CompositionEntity> findByTitle(String title) {
		String query = "for $composition in doc('/db/music/CompositionCollection.xml')/composition_collection/composition ";
		query += "where contains($composition/title/main_title,\'" + title + "\')";
		query += "return $composition";
		System.out.println("query: "+query);
		List<CompositionEntity> result = search(query);
		return result;
	}

	 public List<CompositionEntity> findByParams (String author, String title, String era, String genre, String publisher) {
		  String query = "for $composition in doc('/db/music/CompositionCollection.xml')/composition_collection/composition";
		  query += " let $author:=$composition//author/name";
		  query += " let $title:=$composition//main_title";
		  query += " let $era:=$composition//stylistic_era";
		  query += " let $genre:=$composition//genre";
		  query += " let $publisher:=$composition//publisher/name";
		  query += " let $number:=$composition//number/id";
		  query += " let $total_rating:=$composition/total_rating";
		  query += makeSearchQueryCondition(author, title, era, genre, publisher);
		  query += " return <composition>";
		  query += " <title>{xs:string($title)}</title>";
		  query += " <author>{xs:string($author)}</author>";
		  query += " <genre>{xs:string($genre)}</genre>";
		  query += " <era>{xs:string($era)}</era>";
		  query += " <publisher>{xs:string($publisher)}</publisher>";
		  query += " <number>{xs:string($number)}</number>";
		  query += " <total_rating>{xs:string($total_rating)}</total_rating>";
		  query += " </composition>";
		  
		  System.out.println("query: "+query);
		  List<CompositionEntity> result = search(query);
		  return result;
		 }

		 @Override
		 protected CompositionEntity readObject(Element element) {
		  CompositionEntity composition = new CompositionEntity();
		  String filler = "-";
		 
		  composition.setMainTitle(element.getElementsByTagName("title").item(0).getTextContent());
		  composition.setAuthor(element.getElementsByTagName("author").item(0).getTextContent());
		  composition.setPublisher(element.getElementsByTagName("publisher").item(0).getTextContent());
		  composition.setNumber(element.getElementsByTagName("number").item(0).getTextContent());
		  System.out.println("total_rating val: "+element.getElementsByTagName("total_rating").item(0));
		  composition.setTotalRating(element.getElementsByTagName("total_rating").item(0).getTextContent());
		  
		  
		  
		  composition.print();
		  
		  try {
			  String era = element.getElementsByTagName("era").item(0).getTextContent();
			  composition.setStylisticEra((era == null || era.isEmpty()) ? filler : era);
			  
			  String genre = element.getElementsByTagName("genre").item(0).getTextContent();
			  composition.setGenre((genre == null || genre.isEmpty()) ? filler : genre);	  
		  } catch (NullPointerException e) {
			 System.out.println("GENRE or ERA empty, no problem");
			 e.printStackTrace();
		  };
		  
		  

		  return composition;
		 }
		 
		 private String makeSearchQueryCondition(String author, String title, String era, String genre, String publisher) {  
		  if (author.isEmpty() && title.isEmpty() && era.isEmpty() && genre.isEmpty() && publisher.isEmpty())
		   return "";
		  StringBuilder queryStr = new StringBuilder(" where ");
		  boolean andNeeded = false;
		  if (!author.isEmpty()) {
		   queryStr.append("contains($author,\'" + author + "\')");
		   andNeeded = true;
		  }
		  if (!title.isEmpty()) {
		   if (andNeeded)
		    queryStr.append(" and ");
		   queryStr.append("contains($title,\'" + title + "\')");
		   andNeeded = true;
		  }
		  if (!era.isEmpty()) {
		   if (andNeeded)
		    queryStr.append(" and ");
		   queryStr.append("contains($composition//stylistic_era,\'" + era + "\')");
		   andNeeded = true;
		  }
		  if (!genre.isEmpty()) {
		   if (andNeeded)
		    queryStr.append(" and ");
		   queryStr.append("contains($composition//genre,\'" + genre + "\')");
		   andNeeded = true;
		  }
		  if (!publisher.isEmpty()) {
		   if (andNeeded)
		    queryStr.append(" and ");
		   queryStr.append("contains($composition//publisher/name,\'" + publisher + "\')");
		   andNeeded = true;
		  }
		  return queryStr.toString();
		 }

}

package org.musicalpatriots.xml.entity;

import org.musicalpatriots.service.businesslogic.RatingLogic;

public class RatingEntity {

	private String rater_ref;
	private String total_rating;
	private String style;
	private	String technique;	
	private	String rhythm; 	
	private	String flexibility; 	
	private	String connections;	
	private	String range;	
	private	String merit; 	
	private	String articulation;	
	private	String accompaniment;	
	private	String comments;
	
	public RatingEntity() {}
	
	
	public String getRater_ref() {
		return rater_ref;
	}
	public void setRater_ref(String rater_ref) {
		this.rater_ref = rater_ref;
	}
	public String getTotal_rating() {
		return total_rating;
	}
	public void setTotal_rating(String total_rating) {
		this.total_rating = total_rating;
	}
	public String getStyle() {
		return style;
	}
	public void setStyle(String style) {
		this.style = style;
	}
	public String getTechnique() {
		return technique;
	}
	public void setTechnique(String technique) {
		this.technique = technique;
	}
	public String getRhythm() {
		return rhythm;
	}
	public void setRhythm(String rhythm) {
		this.rhythm = rhythm;
	}
	public String getFlexibility() {
		return flexibility;
	}
	public void setFlexibility(String flexibility) {
		this.flexibility = flexibility;
	}
	public String getConnections() {
		return connections;
	}
	public void setConnections(String connections) {
		this.connections = connections;
	}
	public String getRange() {
		return range;
	}
	public void setRange(String range) {
		this.range = range;
	}
	public String getMerit() {
		return merit;
	}
	public void setMerit(String merit) {
		this.merit = merit;
	}
	public String getArticulation() {
		return articulation;
	}
	public void setArticulation(String articulation) {
		this.articulation = articulation;
	}
	public String getAccompaniment() {
		return accompaniment;
	}
	public void setAccompaniment(String accomplishment) {
		this.accompaniment = accomplishment;
	}
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
	
	public void setRatingDifficulty() {
		Double total =	RatingLogic.getDifficulty(Integer.parseInt(style), Integer.parseInt(technique), 
				Integer.parseInt(accompaniment),Integer.parseInt(rhythm), Integer.parseInt(flexibility), 
				Integer.parseInt(connections), Integer.parseInt(range), Integer.parseInt(articulation), 
				Integer.parseInt(merit));
		this.total_rating = total.toString();
		}
}

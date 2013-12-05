package org.musicalpatriots.xml.entity;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "Composition")
public class CompositionEntity {
	 private String mainTitle;
	 private String author;
	 private String publisher;
	 private String genre;
	 private String stylisticEra;
	 private String number;
	 
	 public CompositionEntity() {}

	 @XmlElement
	 public String getMainTitle() {
	  return mainTitle;
	 }

	 public void setMainTitle(String mainTitle) {
	  this.mainTitle = mainTitle;
	 }

	 @XmlElement
	 public String getGenre() {
	  return genre;
	 }

	 public void setGenre(String genre) {
	  this.genre = genre;
	 }

	 public String getAuthor() {
	  return author;
	 }

	 public void setAuthor(String author) {
	  this.author = author;
	 }

	 @XmlElement
	 public String getPublisher() {
	  return publisher;
	 }

	 public void setPublisher(String publisher) {
	  this.publisher = publisher;
	 }

	 public String getStylisticEra() {
	  return stylisticEra;
	 }

	 public void setStylisticEra(String stylisticEra) {
	  this.stylisticEra = stylisticEra;
	 }

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}
	 
	public void print() {
		System.out.println("CompositionEntity: "+
			"Number: "+this.number+" "+
			"Author: "+this.author+" "+
			"Genre: "+this.genre+" "+
			"Title: "+this.mainTitle+" "+
			"Publisher: "+this.publisher+" "+
			"Era: "+this.stylisticEra);
	}
	
	
}

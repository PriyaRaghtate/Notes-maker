package com.entities;



import java.util.Date;
import java.util.Random;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="notes")
public class Note {
	@Id
private int id;
private String title;
@Column(length=1500)
private String content;
@Column(name="date")
private Date adddate;
public Note() {
	super();
	// TODO Auto-generated constructor stub
}
public Note(String title, String content, Date adddate) {
	super();
	this.id = new Random().nextInt(10000);
	this.title = title;
	this.content = content;
	this.adddate = adddate;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getTitle() {
	return title;
}
public void setTitle(String title) {
	this.title = title;
}
public String getContent() {
	return content;
}
public void setContent(String content) {
	this.content = content;
}
public Date getAdddate() {
	return adddate;
}
public void setAdddate(Date adddate) {
	this.adddate = adddate;
}
@Override
public String toString() {
	return "Task [id=" + id + ", title=" + title + ", content=" + content + ", adddate=" + adddate + "]";
}



}

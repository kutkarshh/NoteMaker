package com.entities;

import java.util.Date;
import java.util.Random;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "notes")
public class Note {

	@Id
	private int id;
	@Column(name = "note_title")
	private String title;
	@Column(name = "note_desc", length = 1500)
	private String desc;
	@Column(name = "date_added")
	private Date addedDate;

	public int getId() {
		return id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}

	public Date getAddedDate() {
		return addedDate;
	}

	public void setAddedDate(Date addedDate) {
		this.addedDate = addedDate;
	}

	public Note(String title, String desc, Date addedDate) {
		super();
		this.id = new Random().nextInt(100000);
		this.title = title;
		this.desc = desc;
		this.addedDate = addedDate;
	}

	public Note() {
		super();
	}

	@Override
	public String toString() {
		return "Note [id=" + id + ", title=" + title + ", desc=" + desc + ", addedDate=" + addedDate + "]";
	}

}

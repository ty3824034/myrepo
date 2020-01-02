package org.mpct.blood.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="IndiaCity")
public class IndiaCity {
@Id
@GeneratedValue(strategy=GenerationType.IDENTITY)
@Column(name="cityid")
int id;
@Column(name="cityname")
String cityname;
@Column(name="statename")
String statename;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getCityname() {
	return cityname;
}
public void setCityname(String cityname) {
	this.cityname = cityname;
}
public String getStatename() {
	return statename;
}
public void setStatename(String statename) {
	this.statename = statename;
}

}


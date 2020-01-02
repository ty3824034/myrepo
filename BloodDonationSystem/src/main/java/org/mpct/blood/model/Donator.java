package org.mpct.blood.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

@Entity
@Table(name="Donator")
public class Donator {
@Id
@GeneratedValue(strategy=GenerationType.IDENTITY)
@Column(name="donateid")
int donateid;
@NotNull
@Column(name="dname")
String dname;
@NotNull
@Column(name="dphone")
String dphone;
@NotNull
@Column(name="dblood")
String dblood;
@NotNull
@Column(name="ddate")
String ddate;
@NotNull
@Column(name="dstate")
String dstate;
@NotNull
@Column(name="dcity")
String dcity;
@NotNull
@Column(name="dquantity")
String dquantity;
@NotNull
@Column(name="dhospital")
String dhospital;
@NotNull
@Column(name="dtermscondition")
String dtermscondition;
public String getDname() {
	return dname;
}
public void setDname(String dname) {
	this.dname = dname;
}
public String getDphone() {
	return dphone;
}
public void setDphone(String dphone) {
	this.dphone = dphone;
}
public String getDblood() {
	return dblood;
}
public void setDblood(String dblood) {
	this.dblood = dblood;
}
public String getDdate() {
	return ddate;
}
public void setDdate(String ddate) {
	this.ddate = ddate;
}
public String getDstate() {
	return dstate;
}
public void setDstate(String dstate) {
	this.dstate = dstate;
}
public String getDcity() {
	return dcity;
}
public void setDcity(String dcity) {
	this.dcity = dcity;
}
public String getDhospital() {
	return dhospital;
}
public void setDhospital(String dhospital) {
	this.dhospital = dhospital;
}
public String getDtermscondition() {
	return dtermscondition;
}
public void setDtermscondition(String dtermscondition) {
	this.dtermscondition = dtermscondition;
}
}

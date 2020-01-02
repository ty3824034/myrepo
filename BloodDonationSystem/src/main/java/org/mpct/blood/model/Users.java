package org.mpct.blood.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Users")
public class Users {
@Id
@GeneratedValue(strategy=GenerationType.IDENTITY)
@Column(name="id")
int id;
@Column(name="name")
String name;
@Column(name="gender")
String gender;
@Column(name="dob")
String dob;
@Column(name="address")
String address;
@Column(name="state")
String state;
@Column(name="city")
String city;
@Column(name="phone")
String phone;
@Column(name="email")
String email;
@Column(name="idproof")
String idproof;
@Column(name="blood")
String blood;
@Column(name="password")
String password;
@Column(name="picture")
String picture;
@Column(name="bloodcertificate")
String bloodcertificate;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getGender() {
	return gender;
}
public void setGender(String gender) {
	this.gender = gender;
}
public String getDob() {
	return dob;
}
public void setDob(String dob) {
	this.dob = dob;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
public String getState() {
	return state;
}
public void setState(String state) {
	this.state = state;
}
public String getCity() {
	return city;
}
public void setCity(String city) {
	this.city = city;
}
public String getPhone() {
	return phone;
}
public void setPhone(String phone) {
	this.phone = phone;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getIdproof() {
	return idproof;
}
public void setIdproof(String idproof) {
	this.idproof = idproof;
}
public String getBlood() {
	return blood;
}
public void setBlood(String blood) {
	this.blood = blood;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getPicture() {
	return picture;
}
public void setPicture(String picture) {
	this.picture = picture;
}
public String getBloodcertificate() {
	return bloodcertificate;
}
public void setBloodcertificate(String bloodcertificate) {
	this.bloodcertificate = bloodcertificate;
}

}

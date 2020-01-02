package org.mpct.blood.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
@Entity
@Table(name="Receptor")
public class Receptor {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="receptid")
	int receptid;
	@NotNull
	@Column(name="name")
	String name;
	@NotNull
	@Column(name="phone")
	String phone;
	@NotNull
	@Column(name="blood")
	String blood;
	@NotNull
	@Column(name="quantity")
	String quantity;
	@NotNull
	@Column(name="date")
	String date;
	@NotNull
	@Column(name="state")
	String state;
	@NotNull
	@Column(name="city")
	String city;
	@NotNull
	@Column(name="hospital")
	String hospital;
	@NotNull
	@Column(name="termscondition")
	String termscondition;
	public int getReceptid() {
		return receptid;
	}
	public void setReceptid(int receptid) {
		this.receptid = receptid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getBlood() {
		return blood;
	}
	public void setBlood(String blood) {
		this.blood = blood;
	}
	public String getQuantity() {
		return quantity;
	}
	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
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
	public String getHospital() {
		return hospital;
	}
	public void setHospital(String hospital) {
		this.hospital = hospital;
	}
	public String getTermscondition() {
		return termscondition;
	}
	public void setTermscondition(String termscondition) {
		this.termscondition = termscondition;
	}
}

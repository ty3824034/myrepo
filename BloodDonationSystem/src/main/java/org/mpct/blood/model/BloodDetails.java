package org.mpct.blood.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="BloodDetails")
public class BloodDetails {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="bloodid")
	int bloodid;
	@Column(name="hospitalname")
	String hospitalname;
	@Column(name="bloodtype")
	String bloodtype;
	@Column(name="quantity")
	int quantity;
	public int getBloodid() {
		return bloodid;
	}
	public void setBloodid(int bloodid) {
		this.bloodid = bloodid;
	}
	public String getHospitalname() {
		return hospitalname;
	}
	public void setHospitalname(String hospitalname) {
		this.hospitalname = hospitalname;
	}
	public String getBloodtype() {
		return bloodtype;
	}
	public void setBloodtype(String bloodtype) {
		this.bloodtype = bloodtype;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
}
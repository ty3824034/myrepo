package org.mpct.blood.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="IndiaHospital")
public class IndiaHospital {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="hospitalid")
	int hospitalid;
	@Column(name="hospitalname")
	String hospitalname;
	@Column(name="cityname")
	String cityname;
	public int getHospitalid() {
		return hospitalid;
	}
	public void setHospitalid(int hospitalid) {
		this.hospitalid = hospitalid;
	}
	public String getHospitalname() {
		return hospitalname;
	}
	public void setHospitalname(String hospitalname) {
		this.hospitalname = hospitalname;
	}
	public String getCityname() {
		return cityname;
	}
	public void setCityname(String cityname) {
		this.cityname = cityname;
	}

}

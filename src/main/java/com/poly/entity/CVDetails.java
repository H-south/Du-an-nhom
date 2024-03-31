package com.poly.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.Data;

@Data
@Entity
@Table(name="CVDetail")
public class CVDetails {
	@Id
	private String id;
	private String kyNang;
	private String chungChi;
	
	@ManyToOne
	@JoinColumn(name = "user_id")
	private Users users;
	@ManyToOne @JoinColumn(name= "cvs_id")
	private Companys companys;
}
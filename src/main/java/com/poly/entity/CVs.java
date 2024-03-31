package com.poly.entity;

import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.Data;

@Data
@Entity
@Table(name = "CV")
public class CVs {
	@Id
	private String id;
	private String tieuDe;
	private String kyNang;
	private String kinhNghiem;
	@OneToMany(mappedBy = "cvs")
	List<Companys> companys;
	
}

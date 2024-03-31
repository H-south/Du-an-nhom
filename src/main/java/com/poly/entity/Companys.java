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
@Table(name="Company")
public class Companys {
	@Id
	private String id;
	private String tenCty;
	private String viTriTuyenDung;
	private String yeuCau;
	@ManyToOne @JoinColumn(name= "cvs_id")
	private CVs cvs;
	@OneToMany(mappedBy = "companys")
	private List<CVDetails> cvDetail;
}

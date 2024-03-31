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
@Table(name = "Users")
public class Users {
	@Id
	private String id;
	private String diaChi;
	@ManyToOne
	@JoinColumn(name = "username")
	private Accounts account;
	
	@OneToMany(mappedBy = "users")
	private List<CVDetails> cvdetails;
}

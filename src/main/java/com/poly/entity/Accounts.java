package com.poly.entity;

import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.Data;

@Entity
@Data
@Table(name="Account")
public class Accounts {
	@Id
	private String username;
	private String password;
	Boolean active = false;
	private String sdt;
	private String email;
	private String hoTen;
	@OneToMany(mappedBy = "account")
	List<Users> users;
}

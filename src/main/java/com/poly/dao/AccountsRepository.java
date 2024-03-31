package com.poly.dao;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.social.facebook.api.Account;

import com.poly.entity.Accounts;


public interface AccountsRepository extends JpaRepository<Accounts, String> {

	Optional<Account> findByUsernameAndPassword(String username, String password);

}

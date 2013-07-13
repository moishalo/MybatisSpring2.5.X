package org.mybatis.spring.test.service;

import java.util.List;

import org.mybatis.spring.test.mapper.AccountMapper;
import org.mybatis.spring.test.model.Account;
import org.springframework.transaction.annotation.Transactional;

public class AccountService {

	private AccountMapper accountMapper;

	public void setAccountMapper(AccountMapper accountMapper) {
		this.accountMapper = accountMapper;
	}

	public Account getAccount(String username) {
		return accountMapper.getAccountByUsername(username);
	}

	public Account getAccount(String username, String password) {
		Account account = new Account();
		account.setUsername(username);
		account.setPassword(password);
		return accountMapper.getAccountByUsernameAndPassword(account);
	}

	public void insertAccount(Account account) {
		accountMapper.insertAccount(account);
		//accountMapper.insertProfile(account);
		//accountMapper.insertSignon(account);
	}

	public void updateAccount(Account account) {
		accountMapper.updateAccount(account);
		accountMapper.updateProfile(account);

		if (account.getPassword() != null && account.getPassword().length() > 0) {
			accountMapper.updateSignon(account);
		}
	}
	
	public void insertAccountInTransaction(List<Account> accounts){
		for(Account account : accounts){
			insertAccount(account);
		}
		int i = 1/0;
	}

}

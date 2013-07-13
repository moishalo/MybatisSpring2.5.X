package org.mybatis.spring.test.testcase;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.test.model.Account;
import org.mybatis.spring.test.service.AccountService;
import org.springframework.test.AbstractDependencyInjectionSpringContextTests;

/**
 * @Title: TransactionTest.java
 * @Package org.mybatis.spring.test.testcase
 * @Description: 测试Spring声名式事务
 * @author moishalo.zhang moishalo.zhang@gmail.com
 * @date 2013年7月13日 下午6:31:42 $Revision: 1.00$
 * @version V1.0
 */
public class TransactionTest extends
		AbstractDependencyInjectionSpringContextTests {

	@Override
	protected void prepareTestInstance() throws Exception {
		this.setAutowireMode(AUTOWIRE_BY_NAME);
		super.prepareTestInstance();
	}

	@Override
	protected String[] getConfigLocations() {
		return new String[] { "classpath*:/applicationContext-sample-scan.xml" };
	}

	private AccountService accountService;

	public void setAccountService(AccountService accountService) {
		this.accountService = accountService;
	}

	public void testTransaction() {
		List<Account> accounts = new ArrayList<Account>();
		for (int i = 0; i < 10; i++) {
			Account account = new Account();
			account.setUsername("username" + i);
			account.setEmail("username" + i + "@local.host");
			account.setFirstName("f" + i);
			account.setLastName("l" + i);
			account.setAddress1("address" + i);
			account.setCity("beijing");
			account.setState("beijing");
			account.setZip("100000");
			account.setCountry("china");
			account.setPhone("1370000000");
			accounts.add(account);
		}
		try {
			accountService.insertAccountInTransaction(accounts);
		} catch (ArithmeticException e) {
			//获取除零异常,检查是否回滚
			Account account = accountService.getAccount("username0");
			assertNull(account);
		}
	}
}

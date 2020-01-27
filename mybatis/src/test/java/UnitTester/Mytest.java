package UnitTester;

import javax.annotation.Resource;
 
import org.apache.log4j.Logger;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
 
import com.alibaba.fastjson.JSON;
import test.domain.User;
import test.java.IUserService;
 
@RunWith(SpringJUnit4ClassRunner.class)		//表示继承了SpringJUnit4ClassRunner类
@ContextConfiguration(locations = {"classpath*:/spring/applicationContext*.xml",
		"classpath:spring-mybatis.xml"})

public class Mytest {
	private static Logger logger = Logger.getLogger(Mytest.class);
	private ApplicationContext ac = null;
	@Resource
	private IUserService userService = null;
 
	@Before
	public void before() {
		ac = new ClassPathXmlApplicationContext("spring-mybatis.xml");
		userService = (IUserService) ac.getBean("userService");
	}
 
	@Test
	public void test1() {

		User user = userService.getUserById(2);
		// System.out.println(user.getUserName());
		// logger.info("值："+user.getUserName());
		logger.info(JSON.toJSONString(user));
	}
	@Test
	public void getList() {
	System.out.println("aaaaaaaaaa");
	}
	
	


}


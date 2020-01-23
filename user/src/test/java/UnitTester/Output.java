package UnitTester;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)		//表示继承了SpringJUnit4ClassRunner类
@ContextConfiguration(locations = {"classpath*:/spring/applicationContext*.xml"})


public class Output {
	@Test
	public void getList3() {
	System.out.println("aaaaaaaaaa");
	}
}

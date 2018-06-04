package test.java;


import com.thoughtworks.selenium.Selenium;
import org.openqa.selenium.ie.InternetExplorerDriver;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import com.thoughtworks.selenium.webdriven.WebDriverBackedSelenium;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import java.io.File;
/*import static org.apache.commons.lang3.StringUtils.join;*/

public class LoginFunctionalTestUI {
	private Selenium selenium;

	@Before
	public void setUp() throws Exception {
		WebDriver driver ;
		
		File file = new File("D:/Selenium/IEDriverServer.exe");
		//File file = new File("D:/Selenium/chromedriver.exe");
		System.setProperty("webdriver.ie.driver", file.getAbsolutePath());
		//System.setProperty("webdriver.chrome.driver", file.getAbsolutePath());
		String baseUrl = "http://localhost:8080/";
		//driver = new ChromeDriver();
		driver = new InternetExplorerDriver();
		selenium = new WebDriverBackedSelenium(driver, baseUrl);
	}

	@Test
	public void testUntitledTestCase() throws Exception {
		selenium.open("http://localhost:8080/PaymentDemo/Login.jsp");
	/*	selenium.click("id=exampleInputEmail1");*/
		selenium.type("id=exampleInputEmail1", "user@demo.com");
		selenium.type("id=exampleInputPassword1", "sjkdhflksdjhflkjsdhf");
		selenium.click("//button[@type='submit']");
		selenium.click("//button[@type='submit']");
	}

	@After
	public void tearDown() throws Exception {
		selenium.stop();
	}
}

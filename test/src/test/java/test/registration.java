package test;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.chrome.ChromeDriver;





import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;

public class registration{

	public static void main(String[] args) {
		
	}


@Given("I open customer onboard \"([^\"]*)\" URL in the browsers")
public void login2(String url )
{ 

	
	//System.setProperty("webdriver.Firefox.driver", "/home/azureuser/firefox/firefox");
    //WebDriver driver = new ChromeDriver();
	
	
	//System.setProperty("webdriver.chrome.driver", "C:/Program Files (x86)/Google/Chrome/Application/chrome.exe");
    //WebDriver driver = new ChromeDriver();
	
    
	WebDriver driver = new FirefoxDriver();										//open new firfox
driver.get(url);	


try
{
Thread.sleep(5 * 1000);
}catch(InterruptedException ie)
{
//Log message if required.
}

driver.findElement (By.xpath("html/body/form/center/table/tbody/tr[5]/td/a")).click();

driver.findElement (By.xpath("html/body/form/table[3]/tbody/tr[2]/td[2]/input")).sendKeys("rahul");
driver.findElement (By.xpath("html/body/form/table[3]/tbody/tr[3]/td[2]/input")).sendKeys("rahul");
driver.findElement (By.xpath("html/body/form/table[3]/tbody/tr[4]/td[2]/input")).sendKeys("9025981127");
driver.findElement (By.xpath("html/body/form/table[3]/tbody/tr[5]/td[2]/input")).sendKeys("rsharma257@csc.com");
driver.findElement (By.xpath("html/body/form/table[3]/tbody/tr[6]/td[2]/input")).sendKeys("csc");
driver.findElement (By.xpath("html/body/form/table[3]/tbody/tr[7]/td[2]/input")).sendKeys("12345");

driver.findElement (By.xpath("html/body/form/table[4]/tbody/tr[1]/td[1]/input")).click();


try
{
Thread.sleep(4 * 1000);
}catch(InterruptedException ie)
{
//Log message if required.
}


driver.findElement (By.xpath("html/body/form/a")).click();




}

}
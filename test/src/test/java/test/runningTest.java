
package test;

import org.junit.runner.RunWith;

import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@CucumberOptions(features = {"src/test/resources/feature"}, format = {"json:target/json_report/cucumber.json"})
public class runningTest {
	

} 
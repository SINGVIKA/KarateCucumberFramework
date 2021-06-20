package com.adidas;


import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.apache.commons.io.FileUtils;


import com.intuit.karate.Results;
import com.intuit.karate.Runner;

import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;

import net.masterthought.cucumber.Configuration;
import net.masterthought.cucumber.ReportBuilder;

class TestRunner {

	String validatePetAPI = "Features/pets2.feature";
	String availablePetRecordsAPI = "Features/pets.feature";

	/*
	 * @Karate.Test Karate validatePetAPI() { return Karate.run(validatePetAPI); }
	 * 
	 * @Karate.Test Karate availablePetRecordsAPI() { return
	 * Karate.run(availablePetRecordsAPI); }
	 */

	@Test
	public void testParallel() {
		Results results = Runner.path("classpath:com/adidas/").outputCucumberJson(true).parallel(5);
		generateReport(results.getReportDir());
		assertEquals(0, results.getFailCount(), results.getErrorMessages());
		
	}

	public static void generateReport(String karateOutputPath) {
		Collection<File> jsonFiles = FileUtils.listFiles(new File(karateOutputPath), new String[] { "json" }, true);
		List<String> jsonPaths = new ArrayList<String>(jsonFiles.size());
		jsonFiles.forEach(file -> jsonPaths.add(file.getAbsolutePath()));
		Configuration config = new Configuration(new File("target"), "demo");
		ReportBuilder reportBuilder = new ReportBuilder(jsonPaths, config);
		reportBuilder.generateReports();
	}

}

# Karate-UI

**KARATE AUTOMATED TESTS:**

Karate is the only open-source tool to combine API test-automation, mocks, performance-testing and even UI automation into a single, unified framework. The BDD syntax popularized by Cucumber is language-neutral, and easy for even non-programmers. Assertions and HTML reports are built-in, and you can run tests in parallel for speed.

There's also a cross-platform stand-alone executable for teams not comfortable with Java. You don't have to compile code. Just write tests in a simple, readable syntax - carefully designed for HTTP, JSON, GraphQL and XML. And you can mix API and UI test-automation within the same test script.

Refreance-https://github.com/karatelabs/karate

 


**Getting Started:**

**Pre-requisites:**
    
   Make sure you have installed all the pre-requisites
    
    1. Jdk Latest -https://www.oracle.com/java/technologies/downloads/#jdk19-windows
    
    2. Maven-https://maven.apache.org/download.cgi
    
    3. Karate 1.2.0

    <dependency>
    <groupId>com.intuit.karate</groupId>
    <artifactId>karate-junit5</artifactId>
    <version>1.2.0</version>
    <scope>test</scope>
    </dependency>
    
    4. VS Code -https://code.visualstudio.com/download

    5. VS Code Extension - 
     5.1 Karate Runner
     5.2 Cucumber (Gherkin) Full Support
     
    6. Please go through this document if you are a beginner in karate ui - https://karatelabs.github.io/karate/karate-core/
  

**Installations:**
 
   Make sure you install the plugins required for karate
    

**Dependencies**

   Dependencies required to add in pom.xml    

    .karate-junit5
    .karate-apache
    .cucumber-reporting
    
### Steps to start work with framework

	1. Clone the repository to your local machine using : 
		git clone https://github.com/TestrigTechnologies/Karate-UI.git
	2. Import the project in VS Code
	
### Project Structure

  1. src/test/java/demo/testsuite/uiTests/data - contains data for testing in csv and json format
  2. src/test/java/demo/testsuite/uiTests/ - contains feature files and Test Runner files
  3. src/test/java/utils/javaUtils - contains java utility methods
  4. src/test/java/utils/jsUtils - contains java script utility methods
  5. src/test/java/karate-config.js - contains basic configuration for framework set up
  6. src/test/java/logback-test.xml - contains logging mechanism
  7. pom.xml - contains all required dependencies used in the framework.
    	
**Usage:**
To start the test execution 

   Open command prompt or terminal

   Navigate to project folder and execute,

    -> mvn clean test "-DconfigPath= <path of the environment config. file>" "-tags=@<tag1,tag2>"

   For Example:

    -> mvn test -Dtest=uiTestRunnerwith
    -> mvn test -Dtest=uiTestRunnerwithTags  "-Dtags=@basicUITestdropdown"
    -> mvn test -Dtest=uiTestRunnerwithTags  "-Dtags=@basicUITestdropdown"

    -> mvn test -Dtest=apiTestRunner
    -> mvn test -Dtest=apiTestRunnerwithTags  "-Dtags=@smoke"
    -> mvn test -Dtest=apiTestRunnerwithTags  "-Dtags=@smokeyml"

    
**Reporting And Outputs:**

 *Cucumber Html Reports:*
  1. A folder with cucumber-html-reports will be created
  2. Navigate to ./target/cucumber-html-reports/
  3. Open overview-features.html

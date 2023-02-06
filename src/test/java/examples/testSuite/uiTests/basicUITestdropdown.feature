Feature: User registration

  Background: 
    * configure driver = { type: 'chrome', showDriverLog: true }
    * def javaUtils = Java.type('utils.javaUtils')

  @basicUITestdropdown
  Scenario: Drop Down
    * def firstName = javaUtils.generateRandomCapitalLetters(4)
    * def lastName = javaUtils.generateRandomCapitalLetters(4)
    Given driver 'https://www.salesforce.com/in/form/signup/freetrial-sales/?d=topnav2-btn-ft'
    And driver.maximize()
    And input("[name='UserFirstName']",firstName)
    And input("[name='UserLastName']",lastName)
    And input("[name='UserEmail']",'abc@gmail.co.in')
    And select("[name='UserTitle']", 'IT_Manager_AP')
    And input("[name='CompanyName']",'abc')
    And select("[name='CompanyEmployees']", '75')
    And input("[name='UserPhone']",'06303365731')
    And select("[name='CompanyCountry']", '{} India')
    And click('div.msaCheckbox.checkboxInput.section div.checkbox-ui')
    And click('div.form_submit_button.submitButton.buttonCTAItemComponent.parbase > button')
    And delay(30000)
    Then match driver.url == 'https://ap16.lightning.force.com/lightning/page/home'

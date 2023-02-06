Feature: UI Test with Frames

  Background: 
    * configure driver = { type: 'chrome', showDriverLog: true, headless: true }

  @basicUITest
  Scenario: Handle frames test
    Given driver 'https://www.w3schools.com/tags/tryit.asp?filename=tryhtml_iframe'
    And driver.maximize()
    * timeout(3 * 60 * 1000)
    * waitFor('#iframewrapper')
    * timeout()
    And switchFrame('#iframeResult')
    * switchFrame('body > iframe')
    And click('#w3loginbtn')
    # * waitFor('#sub-frame-error')
    # Then exists('#sub-frame-error')

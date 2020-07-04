Feature: Try the elements on Automation Practice Page

  Background:
    * configure driver = { type: 'chromedriver', executable: 'D:/BrowserDrivers/chromedriver83/chromedriver.exe', showDriverLog: true }
    * def base = read('base.json')
    * def locators = read('locators.json')


  Scenario: Launch Browser and navigate to Automation Practice Page
    Given driver base.automationUrl
    #Then maximize()
    And match driver.title == 'Practice Page'


  Scenario: Navigate to Home Page from Practice Page
    Given driver base.automationUrl
    #Then maximize()
    And delay(2000)
    When waitFor(locators.homeButton).click()
    * delay(2000)
    And match driver.title == 'Rahul Shetty Academy'
#
#  Scenario: Navigate to Practice Page and click on Radio Button 3
#    Given driver base.automationUrl
#    * waitFor(locators.radioButton3).click()
#    * delay(2000)
#    * assert locate(locators.radioButton1).exists

#  Scenario: Suggestion Class Example Scenario
#    Given driver base.automationUrl
#    * waitFor(locators.autocompleteTextBox).click()
#    * input(locators.autocompleteTextBox,"ind")
#    * delay(2000)
#    * waitFor("//div[text()='India']").click()
#    * delay(2000)
#    * match driver.text("//legend[contains(text(),'Suggession Class Example')]") == 'Suggession Class Example'

#  Scenario: Dropdown Example
#     Given driver base.automationUrl
#     When waitFor(locators.dropdownEx).click()
#     And delay(2000)
#     Then select(locators.dropdownEx,'{}Option3')
#     And match value(locators.dropdownEx) == 'option3'

#  Scenario: Checkbox Example
#    Given driver base.automationUrl
#    * waitFor("//input[@id='checkBoxOption1']").click()
#    * waitFor("//input[@id='checkBoxOption2']").click()
#    * delay(2000)
#    And match enabled('#checkBoxOption2') == true


#  Scenario: Switch to Alert Example Scenario
#    Given driver base.automationUrl
#    * waitFor(locators.alertTextBox).click()
#    * input(locators.alertTextBox,"Rahul")
#    * delay(1000)
#    * waitFor(locators.alertButton).click()
#    * delay(2000)
#    * match driver.dialog == 'Hello Rahul, share this practice page and share your knowledge'
#    * dialog(true)
#    * delay(2000)
#    * waitFor(locators.alertConfirmButton).click()
#    * delay(2000)
#    * match driver.dialog == 'Hello , Are you sure you want to confirm?'

#  Scenario: Switch Window Example
#    Given driver base.automationUrl
#    When waitFor(locators.openWindow).click()
#    And delay(4000)
#    #Then switchFrame(1)
#    Then switchPage('http://www.qaclickacademy.com/')
#    And match driver.url == 'http://www.qaclickacademy.com/'
#    And print driver.title
#    And print driver.url
#    And print 'Text in New Window------------------',driver.text("//h2[contains(text(),'Featured Courses')]")
#    And match driver.title == 'QA Click Academy | Selenium,Jmeter,SoapUI,Appium,Database testing,QA Training Academy'
#    And match driver.text("//h2[contains(text(),'Featured Courses')]") == 'Featured Courses'

  Scenario: Switch Tab Example
    Given driver base.automationUrl
    When waitFor(locators.openTab).click()
    And print driver.title
    And print driver.url
    * delay(4000)
    * switchPage('Rahul Shetty Academy')
    * delay(2000)
    And print driver.title
    And print driver.url
    * delay(1000)
    * click('{}Login')
    #* waitFor("//a[contains(text(),'Register')]").click
    * delay(4000)

#  Scenario: Mouse Hover Example
#    Given driver base.automationUrl
#    * delay(3000)
#    # Scroll to Mouse Hove Example Text
#    * scroll("//legend[contains(text(),'Mouse Hover Example')]")
#    # Mouse Hover on 'Mouse Hover' button
#    * mouse().move("//button[@id='mousehover']").click()
#    * delay(1000)
#    # Select 'Top' from drop down. It will change the url and assert on that new url
#    * click('{a}Top')
#    * delay(4000)
#    * print driver.url
#    * match driver.url == 'https://www.rahulshettyacademy.com/AutomationPractice/#top'

#  Scenario: Element Displayed Example
#    Given driver base.automationUrl
#    * delay(2000)
#    * scroll("//legend[contains(text(),'Element Displayed Example')]")
#    * delay(2000)
#    When waitFor("//input[@id='hide-textbox']").click()
#    * delay(1000)
#    And match enabled('#displayed-text') == true
#    * delay(3000)
#    * waitFor("//input[@id='show-textbox']").click()
#    * delay(2000)
#    * assert exists('#displayed-text').exists

#  Scenario: Switch between Frames
#    Given driver base.automationUrl
#    * delay(2000)
#    #* scroll("//legend[contains(text(),'iFrame Example')]")
#    * scroll("//a[contains(text(),'Discount Coupons')]")
#    * delay(2000)
#    ### Switching to the Frame with 0 index
#    * switchFrame(0)
#    * delay(2000)
#    * waitFor('{a}Contact').click()
#    * delay(2000)
#    * match driver.text("//h1[contains(text(),'Contact Us')]") == 'Contact Us'
#    ### Switching to the Main Frame
#    * switchFrame(null)
#    * delay(2000)
#    * scroll("//button[contains(text(),'Home')]")
#    * delay(2000)
#    * waitFor("//button[contains(text(),'Home')]").click()
#    * delay(4000)
#    * match driver.text("//h2[contains(text(),'Featured Courses')]") == 'Featured Courses'
#

*** Settings ***
Library     SeleniumLibrary
#performed advance concepts like css selector and javascript
*** Test Cases ***
TC1
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    10s
    Go To    url=https://smallpdf.com/pdf-to-word
    Choose File   xpath=//input[@type='file']    D:${/}OneDrive - LTTS${/}Documents${/}aparna.pdf
    sleep  10s

TC2
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    10s
    Go To    url=https://www.facebook.com
    Input Text    css=#email    aparna.com
    Input Text    css=#pass     welcome123
    #click on login
    Click Element  css =button[name='login']

TC3 JAVASCRIPT
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    10s
    Go To    url=https://www.phptravels.net/
    Click Element   xpath=//span[contain(text(),'Search by City')]
    Input Text    xpath=//input[@class='select2-search__field']  Vadodara
    Execute Javascript   document.querySelector('#checkin').value='30-9-2023'
    Execute Javascript   document.querySelector('#checkout').value='29-11-2023'
    #Execute Javascript   document.querySelector('#select2-hotels_city-container').value='VADODARA'


tc4
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    10s
    Go To    url=https://www.redbus.in
    Click Element   id=src
    Input Text   id=src    Vadodara
    Click Element   xpath=//li[text()='Central Bus Station, Vadodara']
    Click Element   id=dest

tc5
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    10s
    Go To    url=https://nasscom.in
    ${ele}  Get WebElement   xpath=//a[text()='Members Listing']
    Execute Javascript  arguments[0].click()  ARGUMENTS      ${ele}



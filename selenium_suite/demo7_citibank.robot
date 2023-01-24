*** Settings ***
Library  SeleniumLibrary
#input of birthday is different here in citibank
*** Test Cases ***

TC1 REG
    Open Browser     browser=edge
    Maximize Browser Window
    Set Browser Implicit Wait    30s
    Go To    url=https://www.online.citibank.co.in/
    Run Keyword And Ignore Error  Click Element   xpath=//a[contains(@title,'Close')]
    Click Element  link=Login
    Switch Window  Citibank India
    #Switch Window  NEW--IT CAN ALSO BE USED TO GO TO THE NEW TAB
    #TO GO TO FIRST WINDOW YOU CAN USE SWITCH WINDOW TITLE/SWITCH WINDOW MAIN
    Click Element   xpath=//div[contains(text(),'User ID?')]
    Click Element   link=select your product type
    Click Element   link=Credit Card
    Input Text   name=citiCard1    4545
    Input Text   name=citiCard2    5656
    Input Text   name=citiCard3    8887
    Input Text   name=citiCard4    9998
    Input Text   name=CCVNO    003
    Click Element  name=DOB
    Select From List By Value  xpath=//select[@class='ui-datepicker-year']  2001
    Select From List By Value   xpath=//select[@class='ui-datepicker-month']  2
    Click Element  link=16
    Click Element   xpath=//input[@type='button']
    Element Should Contain   xpath=//*[text()]   Please accept Terms and Conditions
    Close Browser
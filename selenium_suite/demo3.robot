*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***

#performed a trail login in salesforce and validated the popup
TC1 REG
    Open Browser     browser=chrome
    Maximize Browser Window
    Set Browser Implicit Wait    30s
    Go To    url=https://www.salesforce.com/in/form/signup/freetrial-sales/
    Input Text    name=UserFirstName    John
    Input Text    name=UserLastName    Wick
    Input Text    name=UserEmail    john@gmail.com
    Select From List By Label   name=UserTitle  IT Manager
    Select From List By Value   name=CompanyEmployees  250
    Input Text   name=CompanyName  ltts
    Select From List By Label   name=CompanyCountry  United Kingdom
    Click Element   class=checkbox-ui
    Click Element   name=start my free trial
    Element Text Should Be   xpath=//span[contains(@id,'UserPhone')]    Enter a valid phone number
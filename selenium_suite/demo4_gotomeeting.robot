*** Settings ***

Library  SeleniumLibrary
#assignment on gotomeeting
*** Test Cases ***

TC1 REG
    Open Browser     browser=chrome
    Maximize Browser Window
    Set Browser Implicit Wait    30s
    Go To    url=https://www.goto.com/meeting/
    Click Element   id=truste-consent-button
    Click Element   link=Try Free
    Input Text   name=FirstName    john
    Input Text   name=LastName    wick
    Input Text   name=Email    john@gmail.com

    Select From List By Label  id=CompanySize  10 - 99
    #Element Text Should Be   xpath=//input[contains(@id,'login__password')]    8 - 32 Characters
    [Teardown]  Close Browser


*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***

TC1 REG
    Open Browser     browser=ff
    Maximize Browser Window
    Set Browser Implicit Wait    30s
    Go To    url=https://www.medibuddy.in/
    Click Element   link=Login
    Click Element   class=coperate
    Click Element   xpath=//div[contains(@class,'coperate')]
    Input Text   name=userName    john
    Click Element  xpath=//button[contains(@type,'submit')]
    Input Text   name=password    john123
    Click Element   xpath=//input[@type='checkbox']

    Click Element  xpath=//button[contains(@ng-if,'!loginMedibuddyCheck')]
    Element Should Contain   xpath=//*[text()]  You have entered incorrect password.

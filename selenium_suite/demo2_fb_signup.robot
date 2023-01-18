*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***

TC1 Register
    Open Browser  url=https://www.facebook.com/   browser=chrome
    #link text and partial link text works only for tag name a
    Click Element   link=Create New Account
    Sleep    15s
    Input Text   name=firstname    aparna

TC2 Register
    Open Browser  url=https://www.facebook.com/   browser=chrome
    Maximize Browser Window
    Set Browser Implicit Wait    30s
    Click Element   link=Create New Account
    Input Text    name=firstname    aparna
    Input Text    name=lastname    Mohanan
    Input Text    name=reg_email__    aparnam.com
    Input Text    name=reg_passwd__    aparna123
    Select From List By Label   id=day  16
    Select From List By Value   id=month  3
    Select From List By Value   id=year  2001
    Click Element    xpath=//input[@value='1']
    Click Element    name=websubmit

    
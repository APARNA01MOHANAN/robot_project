*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***

TC1 REG
    Open Browser     browser=edge
    Maximize Browser Window
    Set Browser Implicit Wait    30s
    Go To    url=https://www.db4free.net/
    #Click Element   xpath=//a[contains(@target,'_blank')]
    Click Element   partial link=phpMyAdmin
    Switch Window  phpMyAdmin
    Input Text   id=input_username    aparna
    Input Text   id=input_password    appu123
    Click Element   id=input_go
    Close Browser

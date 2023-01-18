*** Settings ***
Library     SeleniumLibrary

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
*** Settings ***
Library  SeleniumLibrary
#basic operations of robot framework using selenium

*** Test Cases ***
TS1
    Open Browser  url=https://www.google.com/       browser=chrome
   ${actual_title}  Get Title
   Log To Console    ${actual_title}
   Log  ${actual_title}
   Should Be Equal    ${actual_title}    Google

TS2
    Open Browser  url=https://www.google.com/       browser=chrome
    Title Should Be   Google

TC3
    Open Browser  url=https://www.facebook.com/       browser=chrome
    Input Text    locator=id:email    text=aparna.com
    Input Text    locator=id:pass     text=welcome123
    #click on login
    Click Element  name=login

TC5
    Open Browser  url=https://www.db4free.net/phpMyAdmin/       browser=chrome
    Input Text    locator=id:input_username    text=aparnaml.com
    Input Text    locator=id:input_password    text=aparna123
    Click Element    locator=id:input_go

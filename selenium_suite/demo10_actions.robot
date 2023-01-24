*** Settings ***
Library     SeleniumLibrary
#performed mouse over and handle alert tasks
*** Test Cases ***
TC1
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    10s
    Go To    url=https://nasscom.in
    Mouse Over   //a[text()='Membership']
    Click Element   link=Members Listing


TC2
    Open Browser    browser=chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    10s
    Go To    url=https://nasscom.in
    Mouse Over   //a[text()='Membership']
    Mouse Over   //a[text()='Become a Member']
    Click Element   link=Membership Benefits
    #Select Frame   xpath=//iframe[contains(@style,'display')]
    #Scroll Element Into View   xpath=//div[text()='Click to Apply Online']
    Click Element   xpath=//a[contains(text(),'Click to Apply Online')]
    Input Text   id=edit-field-company-profile-0-value    L&T
    Click Element   id=calculate-fee
    ${alert_text}  Handle Alert  action=ACCEPT    timeout=40s
    Log To Console   ${alert_text}
    Should Be Equal  ${alert_text}    Please enter the total revenue greater than ZERO.
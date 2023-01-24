*** Settings ***
Library  SeleniumLibrary
#performed all the concepts covered in previous files in openemr
*** Test Cases ***

TC1 REG
    Open Browser     browser=chrome
    Maximize Browser Window
    Set Browser Implicit Wait    30s
    Go To    url=http://demo.openemr.io/b/openemr/
    Input Text   name=authUser    admin
    Input Text   id=clearPass    pass
    Select From List By Value  xpath=//select[@class='form-control']  18
    Click Element   id=login-button
    Mouse Over   xpath=//div[text()='Patient']
    Click Element   xpath=//div[text()='New/Search']
    Select Frame   xpath=//iframe[@name='pat']
    Input Text   name=form_fname    Aparna
    Click Element   name=form_lname
    Input Text   name=form_lname    Mohanan
    Click Element   name=form_DOB
    Input Text   name=form_DOB    24/01/2023
    Select From List By Label  xpath=//select[@name='form_sex']  Female
    Select From List By Label  xpath=//select[@name='form_gender_identity']  Identifies as Female
    Click Element   name=create
    Unselect Frame
    Select Frame   xpath=//iframe[@id='modalframe']
    Click Element   xpath=//input[@value='Confirm Create New Patient']
    ${alert_text}  Handle Alert  action=ACCEPT  timeout=40s
    Log To Console   ${alert_text}
    Unselect Frame
    Click Element   xpath=//div[@class='closeDlgIframe']
    Element Should Contain   xpath=//span[text()='Aparna Mohanan']    Aparna Mohanan
    [Teardown]  Close Browser


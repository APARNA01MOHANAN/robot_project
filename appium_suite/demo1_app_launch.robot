*** Settings ***

Library  AppiumLibrary



*** Test Cases ***

TC1
    Open Application   remote_url=http://localhost:4723/wd/hub
    ...   platformName=android
    ...   deviceName=redminote5pro
    ...   app=C:${/}components${/}khan-academy-7-3-2.apk

    ${page_source}  Get Source
    Log To Console   ${page_source}
    sleep  4s
    Close Application

TC2
    Open Application   remote_url=http://localhost:4723/wd/hub
    ...   platformName=android
    ...   deviceName=redminote5pro
    ...   app=C:${/}components${/}khan-academy-7-3-2.apk

    Wait Until Page Contains Element  xpath=//*[@text='Dismiss']  30s
    Click Element    xpath=//*[@text='Dismiss']
    Wait Until Page Contains Element   xpath=//*[@text='Sign in']  30s
    Click Element   xpath=//*[@text='Sign in']
    Wait Until Page Contains Element   xpath=//android.widget.TextView[@text='Sign in']  30s
    Click Element   xpath=//android.widget.TextView[@text='Sign in']
    Wait Until Page Contains Element   xpath=//*[@text='Enter an e-mail address or username']  30s
    Input Text   xpath=//*[@text='Enter an e-mail address or username']   aparnaml@gmail.com
    Wait Until Page Contains Element   xpath=//*[@text='Password']  30s
    Input Text   xpath=//*[@text='Password']  sdfgjsuw
    Wait Until Page Contains Element   xpath=//*[@text='Sign in']  30s
    Click Element   xpath=//*[@text='Sign in']
    Sleep    15s
    [Teardown]  Close Application
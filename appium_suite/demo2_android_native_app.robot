*** Settings ***

Library  AppiumLibrary



*** Test Cases ***

TC1 sign up
    [Documentation]       working with native app
    ...   for automating sign up activity
    Open Application   remote_url=http://localhost:4723/wd/hub
    ...   platformName=android
    ...   deviceName=redminote5pro
    ...   app=C:${/}components${/}khan-academy-7-3-2.apk
    Set Appium Timeout   30s
    Wait Until Page Contains Element  xpath=//*[@text='Dismiss']  30s
    Click Element    xpath=//*[@text='Dismiss']
    Wait Until Page Contains Element  xpath=//android.widget.ImageView[@content-desc='Settings']
    Click Element    xpath=//android.widget.ImageView[@content-desc='Settings']
    Wait Until Page Contains Element  xpath=//android.widget.TextView[@text='Sign in']
    Click Element    xpath=//android.widget.TextView[@text='Sign in']
    Wait Until Page Contains Element  xpath=//android.widget.TextView[@text='Sign up with email']
    Click Element    xpath=//android.widget.TextView[@text='Sign up with email']
    Wait Until Page Contains Element    xpath=//android.widget.EditText[@content-desc='First name']
    Input Text    xpath=//android.widget.EditText[@content-desc='First name']   Aparna
    Wait Until Page Contains Element    xpath=//android.widget.EditText[@content-desc='Last name']
    Input Text    xpath=//android.widget.EditText[@content-desc='Last name']   Mohan
    Wait Until Page Contains Element  xpath=//android.widget.TextView[@text='Birthday']
    Click Element  xpath=//android.widget.TextView[@text='Birthday']
    Wait Until Page Contains Element  xpath=(//android.widget.EditText[@resource-id='android:id/numberpicker_input'])[1]
    Click Element   xpath=(//android.widget.EditText[@resource-id='android:id/numberpicker_input'])[1]
    Wait Until Page Contains Element  xpath=(//android.widget.EditText[@resource-id='android:id/numberpicker_input'])[1]
    Clear Text  xpath=(//android.widget.EditText[@resource-id='android:id/numberpicker_input'])[1]
    Wait Until Page Contains Element  xpath=(//android.widget.EditText[@resource-id='android:id/numberpicker_input'])[1]
    Input Text   xpath=(//android.widget.EditText[@resource-id='android:id/numberpicker_input'])[1]  Mar
    Wait Until Page Contains Element  xpath=(//android.widget.EditText[@resource-id='android:id/numberpicker_input'])[2]
    Click Element   xpath=(//android.widget.EditText[@resource-id='android:id/numberpicker_input'])[2]
    Wait Until Page Contains Element  xpath=(//android.widget.EditText[@resource-id='android:id/numberpicker_input'])[2]
    Clear Text  xpath=(//android.widget.EditText[@resource-id='android:id/numberpicker_input'])[2]
    Wait Until Page Contains Element  xpath=(//android.widget.EditText[@resource-id='android:id/numberpicker_input'])[2]
    Input Text   xpath=(//android.widget.EditText[@resource-id='android:id/numberpicker_input'])[2]  16
    Wait Until Page Contains Element  xpath=(//android.widget.EditText[@resource-id='android:id/numberpicker_input'])[3]
    Click Element   xpath=(//android.widget.EditText[@resource-id='android:id/numberpicker_input'])[3]
    Wait Until Page Contains Element  xpath=(//android.widget.EditText[@resource-id='android:id/numberpicker_input'])[3]
    Clear Text  xpath=(//android.widget.EditText[@resource-id='android:id/numberpicker_input'])[3]
    Wait Until Page Contains Element  xpath=(//android.widget.EditText[@resource-id='android:id/numberpicker_input'])[3]
    Input Text   xpath=(//android.widget.EditText[@resource-id='android:id/numberpicker_input'])[3]  2001
    Wait Until Page Contains Element  xpath=//android.widget.Button[@text='OK']
    Click Element    xpath=//android.widget.Button[@text='OK']
    Wait Until Page Contains Element  xpath=//android.widget.EditText[@text='Email address']
    Input Text    xpath=//android.widget.EditText[@text='Email address']  aparnam@gmail.com
    Wait Until Page Contains Element  xpath=//android.widget.EditText[@text='Password']
    Input Text    xpath=//android.widget.EditText[@text='Password']  aparnam
    Wait Until Page Contains Element  xpath=//android.widget.TextView[@text='CREATE']
    Click Element  xpath=//android.widget.TextView[@text='CREATE']
    Wait Until Page Contains Element   xpath=//android.widget.TextView[@text='There was an issue signing in']
    Element Text Should Be   xpath=//android.widget.TextView[@text='There was an issue signing in']    There was an issue signing in
    Sleep    30s
    [Teardown]  Close Application











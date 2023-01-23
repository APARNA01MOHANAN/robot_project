*** Settings ***

Library  AppiumLibrary

*** Test Cases ***

TC1 Swipe
    [Documentation]       working with native app
    ...   for automating sign up activity
    Open Application   remote_url=http://localhost:4723/wd/hub
    ...   platformName=android
    ...   deviceName=redminote5pro
    ...   appPackage=org.khanacademy.android
    ...   appActivity=org.khanacademy.android.ui.library.MainActivity
    ...   noReset=true
    Set Appium Timeout   20s
    Run Keyword And Ignore Error   Wait Until Page Contains Element  android=UiSelector().text("Dismiss")
    Run Keyword And Ignore Error     Click Element    android=UiSelector().text("Dismiss")
    Wait Until Page Contains Element  android=UiSelector().description("Settings")
    Click Element    android=UiSelector().description("Settings")
    Wait Until Page Contains Element  android=UiSelector().textContains("Sign in")
    Click Element    android=UiSelector().textContains("Sign in")
    Wait Until Page Contains Element  android=UiSelector().text("Sign up with email")
    Click Element    android=UiSelector().text("Sign up with email")
    Wait Until Page Contains Element    android=UiSelector().description("First name")
    Input Text    android=UiSelector().description("First name")  aparna
    Wait Until Page Contains Element    android=UiSelector().description("Last name")
    Input Text    android=UiSelector().description("Last name")   Mohan
    Wait Until Page Contains Element  android=UiSelector().text("Birthday")
    Click Element   android=UiSelector().text("Birthday")
    Wait Until Page Contains Element  android=UiSelector().resourceId("android:id/numberpicker_input").instance(0)
    Click Element   android=UiSelector().resourceId("android:id/numberpicker_input").instance(0)
    Clear Text  android=UiSelector().resourceId("android:id/numberpicker_input").instance(0)
    Input Text   android=UiSelector().resourceId("android:id/numberpicker_input").instance(0)  Mar
    Wait Until Page Contains Element  android=UiSelector().resourceId("android:id/numberpicker_input").instance(1)
    Click Element   android=UiSelector().resourceId("android:id/numberpicker_input").instance(1)
    Clear Text  android=UiSelector().resourceId("android:id/numberpicker_input").instance(1)
    Input Text   android=UiSelector().resourceId("android:id/numberpicker_input").instance(1)  16
    Wait Until Page Contains Element  android=UiSelector().resourceId("android:id/numberpicker_input").instance(2)
    Click Element   android=UiSelector().resourceId("android:id/numberpicker_input").instance(2)
    Clear Text  android=UiSelector().resourceId("android:id/numberpicker_input").instance(2)
    Input Text   android=UiSelector().resourceId("android:id/numberpicker_input").instance(2)  2001
    Wait Until Page Contains Element  android=UiSelector().text("OK")
    Click Element    android=UiSelector().text("OK")

    [Teardown]  Close Application
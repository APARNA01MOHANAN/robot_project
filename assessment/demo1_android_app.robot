*** Settings ***


Library    AppiumLibrary

*** Test Cases ***

TC1 Swipe
    [Documentation]       working with native app
    ...   for automating sign up activity
    Open Application   remote_url=http://localhost:4723/wd/hub
    ...   platformName=android
    ...   deviceName=redminote5pro
    ...   appPackage=com.healthifyme.basic
    ...   versionName=v18.11
    ...   noReset=true
    Set Appium Timeout   20s


*** Settings ***

Library  AppiumLibrary

*** Test Cases ***

TC1
    &{dict}  Create Dictionary   buildName=khan
    ...     projectName=khan project
    ...     userName=aparnaml_EoSJ4c
    ...     accessKey=1JFKzuTCuaAkzoHqxGny
    
    
    Open Application    remote_url=http://hub.browserstack.com/wd/hub
    ...      platformName=ios
    ...      deviceName=iPhone 11 Pro
    ...      app=bs://47099a4c573f2f02c90d0214f3e6dd0cbd7a0fa4
    ...      platformVersion=13
    ...      bstack:options=${dict}


    ${app_source}  Get Source
    log  ${app_source}

    [Teardown]  Close Application

TC2
    &{dict}  Create Dictionary   buildName=khan
    ...     projectName=khan project
    ...     userName=aparnaml_EoSJ4c
    ...     accessKey=1JFKzuTCuaAkzoHqxGny


    Open Application    remote_url=http://hub.browserstack.com/wd/hub
    ...      platformName=ios
    ...      deviceName=iPhone 11 Pro
    ...      app=bs://47099a4c573f2f02c90d0214f3e6dd0cbd7a0fa4
    ...      platformVersion=13
    ...      bstack:options=${dict}

    Set Appium Timeout   20s
    Wait Until Page Contains Element   xpath=//XCUIElementTypeTextField[@name='test-Username']
    Input Text   xpath=//XCUIElementTypeTextField[@name='test-Username']    standard_user
    Wait Until Page Contains Element   xpath=//XCUIElementTypeSecureTextField[@name='test-Password']
    Input Text   xpath=//XCUIElementTypeSecureTextField[@name='test-Password']    secret_sauce
    Wait Until Page Contains Element   xpath=//XCUIElementTypeOther[@name='test-LOGIN']
    Click Element   xpath=//XCUIElementTypeOther[@name='test-LOGIN']
    Wait Until Page Contains Element   xpath=//XCUIElementTypeOther[@name='test-ADD TO CART']
    Click Element   xpath=//XCUIElementTypeOther[@name='test-ADD TO CART']
    #Wait Until Page Contains Element   xpath=//XCUIElementTypeOther[@name='test-ADD TO CART']
    #Click Element   xpath=//XCUIElementTypeOther[@name='test-ADD TO CART']
    Wait Until Page Contains Element   xpath=//XCUIElementTypeOther[@name='test-Cart']
    Click Element   xpath=//XCUIElementTypeOther[@name='test-Cart']
    Wait Until Page Contains Element   xpath=//XCUIElementTypeOther[@name='test-CHECKOUT']
    Click Element   xpath=//XCUIElementTypeOther[@name='test-CHECKOUT']
    Wait Until Page Contains Element   //XCUIElementTypeTextField[@name='test-First Name']
    Input Text   xpath=//XCUIElementTypeTextField[@name='test-First Name']  APARNA
    Wait Until Page Contains Element   xpath=//XCUIElementTypeTextField[@name='test-Last Name']
    Input Text   xpath=//XCUIElementTypeTextField[@name='test-Last Name']  MOHANAN
    Wait Until Page Contains Element   xpath=//XCUIElementTypeTextField[@name='test-Zip/Postal Code']
    Input Text   xpath=//XCUIElementTypeTextField[@name='test-Zip/Postal Code']  100022
    Hide Keyboard
    Wait Until Page Contains Element   xpath=//XCUIElementTypeOther[@name='test-CONTINUE']
    Click Element   xpath=//XCUIElementTypeOther[@name='test-CONTINUE']
    Wait Until Page Contains Element   xpath=//XCUIElementTypeStaticText[@name='Payment Information:']
    Element Should Contain Text   xpath=//XCUIElementTypeStaticText[@name='Payment Information:']  Payment Information:
    Wait Until Page Contains Element   xpath=//XCUIElementTypeStaticText[@name='Shipping Information:']
    Element Should Contain Text  xpath=//XCUIElementTypeStaticText[@name='Shipping Information:']    Shipping Information:
    sleep  5s
    [Teardown]  Close Application
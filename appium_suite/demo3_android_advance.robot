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
    Run Keyword And Ignore Error   Wait Until Page Contains Element  xpath=//*[@text='Dismiss']
    Run Keyword And Ignore Error     Click Element    xpath=//*[@text='Dismiss']
    Wait Until Page Contains Element  xpath=//android.widget.Button[@text='Explore']
    Click Element    xpath=//android.widget.Button[@text='Explore']
    Wait Until Page Contains Element  xpath=//android.widget.TextView[@text='Arts and humanities']
    Click Element  xpath=//android.widget.TextView[@text='Arts and humanities']

    ${count}  Get Matching Xpath Count   xpath=//android.widget.TextView[@text='Art of Asia']
    WHILE   ${count}==0
      Swipe By Percent   90    75    90    25
      ${count}  Get Matching Xpath Count   xpath=//android.widget.TextView[@text='Art of Asia']
    END
    Wait Until Page Contains Element   xpath=//android.widget.TextView[@text='Art of Asia']
    Click Element   xpath=//android.widget.TextView[@text='Art of Asia']
    ${count}  Get Matching Xpath Count   xpath=//android.widget.TextView[@text='South Asia']
    WHILE   ${count}==0
      Swipe By Percent   90    75    90    25
      ${count}  Get Matching Xpath Count   xpath=//android.widget.TextView[@text='South Asia']
    END
    Wait Until Page Contains Element   xpath=//android.widget.TextView[@text='South Asia']
    Click Element   xpath=//android.widget.TextView[@text='South Asia']
    ${count}  Get Matching Xpath Count   xpath=//android.widget.TextView[@text='The Taj Mahal']
    WHILE   ${count}==0
      Swipe By Percent   90    75    90    25
      ${count}  Get Matching Xpath Count   xpath=//android.widget.TextView[@text='The Taj Mahal']
    END
    Wait Until Page Contains Element   xpath=//android.widget.TextView[@text='The Taj Mahal']  70s
    Click Element   xpath=//android.widget.TextView[@text='The Taj Mahal']
    Wait Until Page Contains Element   xpath=//android.widget.TextView[contains(@text,'the fifth ruler')]  50s

#    ${text}     Get Text    xpath=//android.widget.TextView[contains(@text,'the fifth ruler')]
#
#    Log To Console    ${text}
#    Should Contain    ${text}    Shah Jahan was the fifth ruler
    Element Should Contain Text      xpath=//android.widget.TextView[contains(@text,'the fifth ruler')]    Shah Jahan was the fifth ruler
#page should contain text
    [Teardown]  Close Application
    #id=resource id
    #accessablity id=content desc
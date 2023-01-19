*** Settings ***

Library  AppiumLibrary


*** Test Cases ***

TC1
    Open Application   remote_url=http://localhost:4723/wd/hub
    ...   platformName=android
    ...   platformName=redminote5pro
    ...   app=C:${/}components${/}khan-academy-7-3-2.apk
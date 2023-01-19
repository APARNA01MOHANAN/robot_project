Library    OperatingSystem
Library    OperatingSystem
*** Settings ***
Library  OperatingSystem

Library  String
*** Comments ***
write code to list all files name in below directory
C:\Users\40032118\AppData\Local\Programs

*** Test Cases ***

TC1
    ${files}  List Files In Directory     C://Users//40032118//AppData//Local//Programs
    Log To Console   ${files}
    
TC2
    Remove File    path=C://demo//dd//kk.txt
    File Should Not Exist    path=C://demo//dd//kk.txt

TC3
    ${name}  Set Variable  robotframework session
    Log To Console   ${name}
    ${uname}  Convert To Upper Case   ${name}
    Log To Console   ${uname}
    ${finalstr}  Remove String   ${uname}  SESSION
    Log To Console   ${finalstr}

TC4
    ${num1}   Set Variable    $100,200
    ${num1}  Remove String   ${num1}  $  ,
    Log To Console   ${num1}
    ${num2}   Set Variable    $200
    ${num2}  Remove String   ${num2}  $
    Log To Console   ${num2}
    ${add}  Evaluate   ${num1}+${num2}
    Log To Console   ${add}

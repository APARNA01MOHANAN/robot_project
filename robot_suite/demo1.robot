*** Settings ***
Library  DateTime


*** Test Cases ***
TC1
    Log To Console  message=APARNA MOHANAN
    Log To Console  HELLO

TC2
    ${my_name}  Set Variable  APARNA
    Log To Console  ${my_name}

TC3
    ${cur_date}  Get Current Date
    Log To Console  ${cur_date}

TC4
    ${rad}  Set Variable  4
    ${result}=  Evaluate  3.14*${rad}*${rad}
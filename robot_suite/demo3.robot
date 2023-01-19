*** Settings ***
Library    Collections
*** Variables ***

${BROWER NAME}  chrome
${MOBILE_NUM}  9500525694
@{COLORS}  red  green  yellow
&{DETAILS}  name=Aparna  role=Trainer  mobile=304040404040

*** Test Cases ***

TC1
    ${my_name}  Set Variable  Aparna
    Log To Console   ${my_name}
    Log To Console   ${BROWER NAME}

TC2
    Log To Console   ${BROWER NAME}
    Log To Console   ${MOBILE_NUM}

TC3
    Log To Console   ${COLORS}[2]
    Log To Console   ${COLORS}
    ${count}  Get Length   ${COLORS}
    Log To Console   ${count}


TC4
    @{fruits}     Create List     apple   orange  mango
    Log To Console   ${fruits}[1]
    Append To List    ${fruits}  grapes
    Remove Values From List   ${fruits}    apple
    Insert Into List   ${fruits}    1    pineapple
    ${item_count}  Get Length   ${fruits}
    Log To Console   ${item_count}
    Log To Console   ${fruits}

TC5
    FOR    ${i}    IN RANGE    1    11
        Log To Console  ${i}

    END
    
TC6
    @{fruits}     Create List     orange  mango  apple  pineapple
    ${item_count}  Get Length   ${fruits}
    Log To Console   ${item_count}
    FOR    ${s}    IN RANGE    0  ${item_count}
        Log To Console   ${s}
        Log To Console   ${fruits}[${s}]

    END

TC7
    @{fruits}     Create List     orange  mango  apple  pineapple
    FOR    ${fruit}    IN    @{fruits}
        Log    ${fruit}

    END

TC8
    Log To Console   ${DETAILS}[mobile]

TC9
    ${emp_det}   Create Dictionary     emp_id=45  emp_name=Aparna  emp_num=39202847
    Log To Console   ${emp_det}[emp_id]
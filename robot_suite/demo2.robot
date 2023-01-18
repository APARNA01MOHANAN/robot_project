*** Settings ***
Library  OperatingSystem
*** Test Cases ***
TC1
    Create Dictionary  path=c:\\Users\\40032118
    
TC2
    Log To Console  C:\\Users\\40032118
    Log To Console    ${CURDIR}
    Log To Console    ${OUTPUT_DIR}
    Log To Console    ${EXECDIR}
    Log To Console    C:${/}Users${/}40032118
    Log To Console    HI${SPACE}${SPACE}WORLD
    Log To Console    ${TEST_NAME}
    Log To Console    ${SUITE_NAME}
*** Settings ***
Library  RequestsLibrary

*** Test Cases ***

TC1 Get Pet
    Create Session    alias=petshop    url=https://petstore.swagger.io/v2
    ${response}  GET On Session  alias=petshop  url=pet/101
    log  ${response}
    log  ${response.json()}
    log  ${response.json()}[id]
    ${expected_id}  Convert To Integer   101
    Should Be Equal     ${response.json()}[id]  ${expected_id}
    log  ${response.json()}[name]
    Should Be Equal   ${response.json()}[name]     doggie
    Status Should Be   200
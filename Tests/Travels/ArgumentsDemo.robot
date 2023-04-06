*** Settings ***


*** Variables ***


*** Test Cases ***
Argument demo keyword test 1
    Argument demo keyword    Emre   Dursun

Argument demo keyword test 2
    Argument demo keyword    Merve    Emre



*** Keywords ***
Argument demo keyword
    [Arguments]    ${arg1}    ${arg2}
    Log    ${arg1}    
    Log    ${arg2}
*** Settings ***
Library    SeleniumLibrary
Resource            ../../Resources/Common.robot
Library    DataDriver    ../TestData/TestData.xlsx

Suite Setup     Common.Start TestCase
Suite Teardown    Common.Finish TestCase
Test Template    Invalid Login Scenarios


*** Test Cases ***         
Verify Login Fails Invalid Creds    ${username}    ${password}    ${error_msg}


*** Keywords ***
Invalid Login Scenarios
    [Arguments]    ${username}    ${password}    ${error_msg}
    Input Text    ${txtbox_username}   ${username}
    Input Text    ${txtbox_password}    ${password}
    Click Button    ${btn_login}
    Sleep    2s
    Element Should Contain    ${txt_error}    ${error_msg}
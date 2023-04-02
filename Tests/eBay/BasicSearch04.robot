*** Settings ***
Documentation  Basic Search Functionality
Resource  ${COMMON_FUNC_PATH}
Resource  ${EBAY_KEYWORDS_PATH}

Test Setup  Common_Func_Path.Start TestCase
Test Teardown  Common_Func_Path.Finish TestCase

*** Variables ***
${COMMON_FUNC_PATH}  ../../Resources/Common_Func_Path.robot
${EBAY_KEYWORDS_PATH}  ../../Resources/eBay_Keywords_Path.robot


*** Test Cases ***
Verify basic search functionality for eBay
    [Documentation]  This test case verifies eBay basic search functionality
    [Tags]  Functional

    eBay_Keywords_Path.Verify Search Results
    eBay_Keywords_Path.Filter Results by Condition
    eBay_Keywords_Path.Verify Filter Results










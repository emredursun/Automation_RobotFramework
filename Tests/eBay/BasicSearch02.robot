*** Settings ***
Documentation  Basic Search Functionality
Resource  ${COMMON_FUNC_PATH}
Resource  ${EBAY_KEYWORDS_PATH}

*** Variables ***
${COMMON_FUNC_PATH}  ../../Resources/CommonFunctionality.robot
${EBAY_KEYWORDS_PATH}  ../../Resources/eBay_UserDefinedKeywords.robot


*** Test Cases ***
Verify basic search functionality for eBay
    [Documentation]  This test case verifies eBay basic search functionality
    [Tags]  Functional

    Start TestCase
    Verify Search Results
    Filter Results by Condition
    Verify Filter Results
    Finish TestCase










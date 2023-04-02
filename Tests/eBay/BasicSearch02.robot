*** Settings ***
Documentation  Basic Search Functionality
Resource  ../../Resources/CommonFunctionality.robot
Resource  ../../Resources/eBay_UserDefinedKeywords.robot

*** Variables ***


*** Test Cases ***
Verify basic search functionality for eBay
    [Documentation]  This test case verifies eBay basic search functionality
    [Tags]  Functional

    Start TestCase
    Verify Search Results
    Filter Results by Condition
    Verify Filter Results
    Finish TestCase










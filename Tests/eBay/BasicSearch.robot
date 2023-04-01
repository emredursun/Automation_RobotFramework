*** Settings ***
Documentation  Basic Search Functionality
Library  SeleniumLibrary

*** Variables ***



*** Test Cases ***
Verify basic search functionality for eBay
    [Documentation]  This test case verifies eBay basic search functionality
    [Tags]  Functional

    Start TestCase
    Verify Search Results
    Finish TestCase


*** Keywords ***

Start TestCase
    Open Browser  https://www.ebay.com/  chrome
    Maximize Browser Window

Verify Search Results
    Input Text  id:gh-ac  mobile
    Click Button  xpath://input[@id='gh-btn']
    Page Should Contain  results for mobile
#    Press Keys  css:#gh-btn    RETURN

Finish TestCase
    Close Browser

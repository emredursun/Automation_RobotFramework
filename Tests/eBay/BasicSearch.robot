*** Settings ***
Documentation  Basic Search Functionality
Library  SeleniumLibrary

*** Variables ***



*** Test Cases ***
Verify basic search functionality for eBay
    [Documentation]  This test case verifies basic search functionality
    [Tags]  Functional

    Open Browser  https://www.ebay.com/  chrome
    Maximize Browser Window
    Input Text  //input[@id='gh-ac']  mobile
    Click Button  //input[@id='gh-btn']
#    Press Keys  xpath=//input[@id='gh-btn']  [Return]
    Page Should Contain  results for mobile
    Close Browser


*** Keywords ***

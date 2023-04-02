*** Settings ***
Library  SeleniumLibrary
Resource  ./HeaderPage.robot

*** Variables ***
${search_result}   results for

*** Keywords ***
Verify Search Results
    Page Should Contain  ${search_result} ${search_text}[1]

Verify Another Search Result
    Page Should Contain  ${search_result} ${search_text}[3]

Select Product Condition


Select Delivery Options
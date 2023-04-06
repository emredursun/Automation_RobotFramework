*** Settings ***
Library  SeleniumLibrary
Variables    ../Webelements.py

*** Variables ***
# ${SearchTextBox}    xpath://*[@id="gh-ac"]
# ${SearchButton}    xpath://*[@id="gh-btn"]
# ${AdvancedSearchLink}    xpath://*[@id="gh-as-a"]


*** Keywords ***
Input Search Text and Click Search
    [Arguments]    ${search_text}
    Input Text  ${HomePageSearchTextBox}  ${search_text}
    Press Keys    ${HomePageSearchButton}    RETURN


Click on Advanced Search Link
    Click Element    ${HomePageAdvancedSearchLink}
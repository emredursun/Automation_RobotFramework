*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${search_text}  robot

*** Keywords ***
Input Search Text and Click Search
    Input Text  xpath://*[@id="gh-ac"]  ${search_text}
    Press Keys  xpath://*[@id="gh-btn"]  RETURN

Click on Advanced Search Link
    Click Element   xpath://*[@id="gh-as-a"]

Search for Another Text
    Input Text  xpath://*[@id="gh-ac"]  ${search_text}
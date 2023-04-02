*** Settings ***
Library  SeleniumLibrary

*** Variables ***
#${search_text}  robot
# @{search_text}  book  travel  robot  gifts
&{search_text}    key1=books    key2=travel


*** Keywords ***
Input Search Text and Click Search
    Input Text  xpath://*[@id="gh-ac"]  ${search_text.key1}
    Press Keys  xpath://*[@id="gh-btn"]  RETURN

Search for Another Text
    Input Text  xpath://*[@id="gh-ac"]  ${search_text.key2}
    Press Keys  xpath://*[@id="gh-btn"]  RETURN

Click on Advanced Search Link
    Click Element   xpath://*[@id="gh-as-a"]

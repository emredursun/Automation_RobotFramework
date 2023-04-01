*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Search Results
    Input Text  id:gh-ac  mobile
    Click Button  xpath://input[@id='gh-btn']
    Page Should Contain  results for mobile

Filter Results by Condition
    Scroll Element Into View  //*[@id="s0-51-15-0-1-2-6"]/li[1]/ul/li[3]
    Sleep   3
    Click Element  xpath://*[@id="x-refine__group__2"]/ul/li[1]/div/a/div/span

Verify Filter Results
    Page Should Contain Element  //*[@id="s0-51-15-6-3-4[0]-3-1-1-list"]/li[1]/div/a/div
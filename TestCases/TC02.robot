*** Settings ***
Library  SeleniumLibrary
Suite Setup     Open Browser  ${URL}  ${BROWSER}
Suite Teardown  Close All Browsers

*** Variables ***
${BROWSER}  chrome
${URL}  https://demo.nopcommerce.com/

*** Test Cases ***
Login Test
    [Template]  Login With Credentials
    info.emredursun@gmail.com  13579Odd

*** Keywords ***
Login With Credentials
    [Arguments]  ${email}  ${password}
    Click Link  xpath=//a[@class='ico-login']
    Wait Until Page Contains Element  id=Email
    Input Text  id=Email    ${email}
    Input Text  id=Password  ${password}
    Click Button  xpath=(//button[@type='submit'])[2]

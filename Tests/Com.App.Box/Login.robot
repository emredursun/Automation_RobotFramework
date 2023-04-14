*** Settings ***
Library  SeleniumLibrary
Suite Setup     Open Browser  ${URL}  ${BROWSER}
Suite Teardown  Close All Browsers

*** Variables ***
${BROWSER}  Chrome
${URL}  https://www.box.com/home

*** Test Cases ***
Login Test
    [Template]  Login With Credentials
    info.emredursun@gmail.com  1234567890

*** Keywords ***
Login With Credentials
    [Arguments]  ${email}  ${password}
    Click Link    xpath://a[contains(text(),'Log in')]
    Wait Until Page Contains Element    xpath://input[@id='login-email']
    Input Text  xpath://input[@id='login-email']    ${email}
    Click Button    xpath://button[@id='login-submit']  
    Input Text    xpath://input[@id='password-login']    ${password}
    Click Button  xpath://button[@id='login-submit-password']
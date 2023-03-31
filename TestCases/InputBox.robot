*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER}  chrome
${URL}  https://demo.nopcommerce.com/

*** Test Cases ***
TestingInputBox
    Open Browser    ${URL}  ${BROWSER}
    Maximize Browser Window
    Title Should Be    nopCommerce demo store
    Click Link    xpath=//a[contains(text(),'Log in')]
    ${email_input}    Set Variable    id=Email
    Wait Until Page Contains Element    ${email_input}
    Input Text    ${email_input}    info.emredursun@gmail.com
    Sleep    5
    Clear Element Text    ${email_input}
    Sleep    3
    Close Browser

*** Keywords ***

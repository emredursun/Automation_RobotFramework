*** Settings ***
Library     SeleniumLibrary
Suite Setup     Open Browser  ${URL}  ${BROWSER}
Suite Teardown  Close All Browsers

*** Variables ***
${BROWSER}  chrome
${URL}  https://demo.nopcommerce.com/

*** Test Cases ***
Testing Input Box
    [Documentation]  This test case is to verify input box functionality
    Maximize Browser Window
    Title Should Be  nopCommerce demo store
    Click Link  xpath=//a[contains(text(),'Log in')]
    ${email_input}    Set Variable    xpath=//input[@id='Email']
    Wait Until Element Is Visible    ${email_input}
    Input Text    ${email_input}    info.emredursun@gmail.com
#    Wait Until Element Contains    ${email_input}    info.emredursun@gmail.com
    Sleep    3
    Clear Element Text  ${email_input}
#    Wait Until Element Contains    ${email_input}    ""
    Sleep    3
    Close Browser

*** Keywords ***
*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER}  chrome
${URL}  https://demo.nopcommerce.com/

*** Test Cases ***
Login Testgit
    [Template]  Login With Credentials
    info.emredursun@gmail.com  13579Odd

*** Keywords ***
Login With Credentials
    [Arguments]  ${email}  ${password}
        open browser  ${URL}  ${BROWSER}
        click link  xpath://a[@class='ico-login']
        Wait Until Element Is Visible  id:Email
        input text  id:Email    ${email}
        input text  id:Password  ${password}
        click element  xpath:(//button[@type='submit'])[2]
    close browser

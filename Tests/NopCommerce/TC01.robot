*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER}  chrome
${URL}  https://demo.nopcommerce.com/

*** Test Cases ***
LoginTest
        open browser  ${URL}  ${BROWSER}
        loginToAplication
        close browser

*** Keywords ***
loginToAplication
        click link  xpath://a[@class='ico-login']
        input text  id:Email    info.emredursun@gmail.com
        input text  id:Password  13579Odd
        click element  xpath:(//button[@type='submit'])[2]
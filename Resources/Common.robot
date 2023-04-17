*** Settings ***
Library  SeleniumLibrary
Resource    ../Tests/TestData/ConfigData.robot

*** Variables ***
${browser}      chrome
${url}    https://www.saucedemo.com/
${txtbox_username}    xpath://input[@id='user-name']
${txtbox_password}    xpath://input[@id='password']
${btn_login}    xpath://input[@id='login-button']
${txt_error}    xpath://*[@id="login_button_container"]/div/form/div[3]/h3


*** Keywords ***
Start TestCase
    Open Browser    ${url}  ${browser} 
    Maximize Browser Window
    Sleep    2s

Finish TestCase
    Close Browser
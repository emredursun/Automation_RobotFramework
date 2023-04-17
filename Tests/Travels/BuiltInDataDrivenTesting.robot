*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}    https://www.saucedemo.com/
${txtbox_username}    xpath://input[@id='user-name']
${txtbox_password}    xpath://input[@id='password']
${btn_login}    xpath://input[@id='login-button']
${txt_error}    xpath://*[@id="login_button_container"]/div/form/div[3]/h3



*** Test Cases ***
Verify Login Fails - Wrong Username
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

    Input Text    ${txtbox_username}     standard_us
    Input Text    ${txtbox_password}     secret_sauce
    Click Button    ${btn_login}
    Sleep    2s
    Element Should Contain    ${txt_error}    Epic sadface: Username and password do not match any user in this service
    Close Browser

Verify Login Fails - LockedOut User
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

    Input Text    ${txtbox_username}     locked_out_user
    Input Text    ${txtbox_password}     secret_sauce
    Click Button    ${btn_login}
    Sleep    2s
    Element Should Contain    ${txt_error}    Epic sadface: Sorry, this user has been locked out.
    Close Browser

Verify Login Fails - Wrong Password
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

    Input Text    ${txtbox_username}     standard_user
    Input Text    ${txtbox_password}     secret_sa
    Click Button    ${btn_login}
    Sleep    2s
    Element Should Contain    ${txt_error}    Epic sadface: Username and password do not match any user in this service
    Close Browser

Verify Login Fails - Wrong Username and Password
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

    Input Text    ${txtbox_username}     standard_u
    Input Text    ${txtbox_password}     secret_s
    Click Button    ${btn_login}
    Sleep    2s
    Element Should Contain    ${txt_error}    Epic sadface: Username and password do not match any user in this service
    Close Browser

Verify Login Fails - Blank Username and Password
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

    Input Text    ${txtbox_username}     ${EMPTY}
    Input Text    ${txtbox_password}     ${EMPTY}
    Click Button    ${btn_login}
    Sleep    2s
    Element Should Contain    ${txt_error}    Epic sadface: Username is required
    Close Browser













# Understanding How to do Data Driven Testing using Test Template which is built in feature in Robot framework.

# * Data-driven testing means running automated tests with different input data. 
# * Data-driven testing helps to achieve better test coverage
# * Data-driven tests will read data from data storage's (Built-in, external files, Database)
# * Data-driven test approach provides better code maintainability
# * You can use data-driven test approach to prepare test data
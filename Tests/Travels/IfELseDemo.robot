*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}      chrome
${URL}    https://www.saucedemo.com/



*** Test Cases ***
Test Case to demostrate IF/ELSE in Robot FrameWork
    [Documentation]    Test Case to demostrate IF/ELSE in Robot FrameWork

    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    
    Input Text    xpath://input[@id='user-name']    standard_user
    Input Text    xpath://input[@id='password']     secret_sauce
    Click Button    xpath://input[@id='login-button']

    ${items_on_page}=    Get Element Count    xpath://div[@class='inventory_list']/div
    
    Run Keyword If    ${items_on_page} == 10    Test Keyword 1    
    ...         ELSE IF    6 < ${items_on_page} < 10    Test Keyword 2    
    ...         ELSE    Test Keyword 3    


*** Keywords ***
Test Keyword 1 
    Log To Console    Executed Keyword 1 - Found Items as expected
    Close Browser

Test Keyword 2 
    Log To Console    Executed Keyword 2 - Found less than expected Items
    Close Browser

Test Keyword 3 
    Log To Console    Executed Keyword 3 - Exception
    Close Browser



# If/Else - Conditional statement which runs a different set of statements depending on whether an expression is true or false
# Robot Framework has builtin library for this functionality
# You can also use multiple "ELSE IF" clause
# It can also have "ELSE" clause
# Format for IF/ELSE is as follows:
# Run Keyword If  ${condition} == “Some Data”  Keyword1
# ...  ELSE IF  ${condition} == "Some Other Data"  Keyword2
# ...  ELSE  Keyword3
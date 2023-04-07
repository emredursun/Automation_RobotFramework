*** Settings ***
Library         SeleniumLibrary

*** Variables ***
${BROWSER}      chrome

*** Test Cases ***
TestCase to demonstrates how to locate a Dynamic WebElements on the Salesforce Website using Robot Framework
    [Documentation]    This test case shows how to locate dynamic web elements on the Salesforce website using Robot Framework
    Open Browser    https://www.salesforce.com/nl/form/signup/freetrial-sales-essentials/      ${BROWSER}
    Maximize Browser Window
    Click Element    xpath://*[@id="onetrust-reject-all-handler"]
    Input Text    xpath://input[starts-with(@id, 'UserPhone-')]    088 1234-23-345
    Sleep    2s
    Close Browser



TestCase to demonstrates how to use XPath Contains Function in Robot Framework
    [Documentation]    This is a sample test case that demonstrates how to use XPath Contains Function in Robot Framework
    Open Browser    https://www.salesforce.com/nl/form/signup/freetrial-sales-essentials/      ${BROWSER}
    Maximize Browser Window
    Click Element    xpath://*[@id="onetrust-reject-all-handler"]
    Wait Until Element Is Visible    xpath://input[contains(@id, 'UserEmail')]
    Input Text    xpath://input[contains(@id, 'UserEmail')]    info@gmail.com
    Sleep   2s
    Close Browser


TestCase to demonstrates how to use XPath text() Method | Find element by Text
    [Documentation]    This is a sample test case that demonstrates how to use XPath text() Method | Find element by Text
    Open Browser    https://www.salesforce.com/nl/form/signup/freetrial-sales-essentials/      ${BROWSER}
    Maximize Browser Window
    Click Element    xpath://*[@id="onetrust-reject-all-handler"]
    Wait Until Element Is Visible    xpath://a[text()='Main Services Agreement']
    Click Link    xpath://a[text()='Main Services Agreement']
    Sleep   2s
    Close Browser



TestCase to demonstrates how to locate Dynamic WebElements in Robot Framework
    [Documentation]    This is a sample test case that demonstrates how to locate dynamic web elements in Robot Framework
    Open Browser    http://www.uitestingplayground.com/dynamicid      ${BROWSER}
    Maximize Browser Window
    Wait Until Element Is Visible    xpath=//button[contains(text(), 'Button with Dynamic ID')]
    ${dynamic_id}=  Run Keyword And Return Status    Element Should Be Visible  xpath=//button[contains(text(), 'Button with Dynamic ID')]@id
    Run Keyword If    '${dynamic_id}' == 'True'    Input Text  xpath=//button[contains(text(), 'Button with Dynamic ID')]  Test Input
    Sleep   2s
    Close Browser
    
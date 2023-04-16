*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}      chrome



*** Test Cases ***
Test Case to demostrate Implicit and Explicit Wait in Robot FrameWork
    [Documentation]    Implicit and Explicit Wait in Robot FrameWork

    ${default_implicit_wait}=    Get Selenium Implicit Wait

    Set Selenium Implicit Wait    20s
    ${custom_implicit_wait}=     Get Selenium Implicit Wait

    Open Browser    https://www.salesforce.com/nl/    ${BROWSER}
    Click Button    xpath://*[contains(text(),'Accept All Cookies')]
    Maximize Browser Window

    Scroll Element Into View    xpath://span[contains(text(),'Bezoek AppExchange')]

    Mouse Down    xpath://span[contains(text(),'Bezoek AppExchange')]
    Mouse Up    xpath://span[contains(text(),'Bezoek AppExchange')]

    Close Browser

#  Set Selenium Implicit Wait - Sets the implicit wait value used by Selenium
#  Get Selenium Implicit Wait - Gets the implicit wait value used by Selenium
#  Set Browser Implicit Wait - Same as Set Selenium Implicit Wait but only affects the current browser
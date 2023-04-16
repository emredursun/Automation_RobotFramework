*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}      chrome



*** Test Cases ***
Test Case to demostrate Implicit Wait in Robot FrameWork
    [Documentation]    Implicit Wait in Robot FrameWork

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


Test Case to demostrate Explicit Wait in Robot FrameWork
    [Documentation]    Explicit Wait in Robot FrameWork

    ${default_implicit_wait}=    Get Selenium Implicit Wait

    Set Selenium Implicit Wait    20s
    ${custom_implicit_wait}=     Get Selenium Implicit Wait

    Open Browser    https://www.salesforce.com/nl/    ${BROWSER}
    Click Button    xpath://*[contains(text(),'Accept All Cookies')]
    Maximize Browser Window

#  Wait Until Page Contains - Waits until text appears on the current page
#  Wait Until Page Contains Element - Waits until the element locator appears on the current page
#  Wait Until Page Does Not Contain - Waits until text disappears from the current page
#  Wait Until Page Does Not Contain Element - Waits until the element locator disappears from the current page
#  Wait Until Location Is - Waits until the current URL is expected
#  Wait Until Location Is Not - Waits until the current URL is not location
#  Wait Until Location Contains - Waits until the current URL contains expected
#  Wait Until Location Does Not Contain - Waits until the current URL does not contains location
#  Wait Until Element Contains - Waits until the element locator contains text
#  Wait Until Element Does Not Contain - Waits until the element locator does not contain text
#  Wait Until Element Is Enabled - Waits until the element locator is enabled
#  Wait Until Element Is Not Visible - Waits until the element locator is not visible
#  Wait Until Element Is Visible - Waits until the element locator is visible
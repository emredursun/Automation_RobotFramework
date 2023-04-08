*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}      chrome



*** Test Cases ***
TestCase to demostrate how to use Selenium CSS Selector in Robot FrameWork
    [Documentation]    This test case shows how to use Selenium CSS Selector in Robot FrameWork

    Open Browser    https://www.salesforce.com/nl/form/signup/freetrial-sales-essentials/    ${BROWSER}
    Maximize Browser Window
    # Rejects Cookies
    Click Element    xpath://*[@id="onetrust-reject-all-handler"]
    Input Text    css:input[name='UserFirstName']    Emre
    Input Text    css:input[name='UserLastName']    Dursun
    Sleep    3s
    Close Browser
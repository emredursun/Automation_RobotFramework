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
    Click Element   css:div.country-state-group.section
    Wait Until Element Is Visible    css:button[name='Verzenden'][type='submit'][data-qe='form-submit']
    Input Text    css:input[id^='UserTitle']    QA Automation Engineer
    Input Text    css:input[name$='Email']    info@gmail.com
    Input Text    css:input[id*='erPhone']    088 999 543
    Click Element    css:select[id^='CompanyCountry'] > option[value='NL']
    Click Element    css:option[value='en_US'] + option
    Click Element    css:select[id^='CompanyEmployees']>:nth-child(3)
    Page Should Contain Element   css:form[name^='signup_form'] > input:nth-of-type(1)
    Sleep    2s
    Close Browser
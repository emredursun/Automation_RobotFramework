*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}      chrome



*** Test Cases ***
TestCase to demostrate eBay Page WebLocators in Robot FrameWork
    [Documentation]    This is sample test case to demostrate WebLocators in Robot FrameWork

    Open Browser    https://www.ebay.com    ${BROWSER}
    Maximize Browser Window
    # Input Text    id:gh-ac    robot
    # Click Link    link:About eBay
    Click Link    partial link:Seasonal Sales
    Sleep    2s
    Close Browser

    
TestCase to demostrate Salesforce Page WebLocators in Robot FrameWork
    [Documentation]    This is sample test case to demostrate Salesforce Page WebLocators in Robot FrameWork

    Open Browser    https://www.salesforce.com/nl/form/signup/freetrial-sales-essentials/    ${BROWSER}
    Maximize Browser Window
    # Rejects Cookies
    Click Element    xpath://*[@id="onetrust-reject-all-handler"]
    Input Text    xpath://input[@name='UserFirstName']    Emre
    Input Text    xpath://input[@name='UserLastName']    Dursun
    Sleep    4s
    Close Browser

TestCase to demonstrates how to locate a Dynamic WebElements on the Salesforce Website using Robot Framework
    [Documentation]    This test case shows how to locate dynamic web elements on the Salesforce website using Robot Framework
    Open Browser    https://www.salesforce.com/nl/form/signup/freetrial-sales-essentials/      ${BROWSER}
    Maximize Browser Window
    Click Element    xpath://*[@id="onetrust-reject-all-handler"]
    Input Text    xpath://input[starts-with(@id, 'UserPhone-')]    088 1234-23-345
    Sleep    4s
    Close Browser


TestCase to demonstrates how to use XPath AND Operator | XPath OR Operator
    [Documentation]    This test case shows how to use XPath AND Operator | XPath OR Operator
    Open Browser    https://www.salesforce.com/nl/form/signup/freetrial-sales-essentials/      ${BROWSER}
    Maximize Browser Window
    Click Element    xpath://*[@id="onetrust-reject-all-handler"]
    Input Text    xpath://input[@name='UserFirstName' and contains(@id, 'UserFirstName')]    HackYourFuture
    Sleep    4s
    Close Browser


TestCase to demonstrates how to use XPath Axes Methods | Parent, Child, Self 1
    [Documentation]    This test case shows how to use XPath Axes Methods | Parent, Child, Self
    Open Browser    https://www.salesforce.com/nl/form/signup/freetrial-sales-essentials/      ${BROWSER}
    Maximize Browser Window
    Click Element    xpath://*[@id="onetrust-reject-all-handler"]
    Wait Until Element Is Visible    xpath://select[contains(@name, 'CompanyCountry')]//child::option[5]
    Close Browser


TestCase to demonstrates how to use XPath Axes Methods | Parent, Child, Self 2
    [Documentation]    This test case shows how to use XPath Axes Methods | Parent, Child, Self
    Open Browser    https://www.salesforce.com/nl/form/signup/freetrial-sales-essentials/      ${BROWSER}
    Maximize Browser Window
    Click Element    xpath://*[@id="onetrust-reject-all-handler"]
    Click Element   xpath://option[@value='NL']//parent::select
    Sleep    3s
    Close Browser


TestCase to demonstrates how to use Axes Method descendant, descendant-or-self
    [Documentation]    This test case shows how to use Axes Method descendant, descendant-or-self
    Open Browser    https://www.salesforce.com/nl/form/signup/freetrial-sales-essentials/      ${BROWSER}
    Maximize Browser Window
    Click Element    xpath://*[@id="onetrust-reject-all-handler"]
    Wait Until Element Is Visible    xpath://*[contains(@class, 'formContainerV2')]//descendant-or-self::div
    Wait Until Element Is Visible    xpath://*[contains(@class, 'formContainerV2')]//descendant::div[@class='bodyCopyComponent parbase section']
    Wait Until Element Is Visible    xpath://*[contains(@class, 'formContainerV2')]//ancestor-or-self::div[@class='form-header-wrap']
    Wait Until Element Is Visible    xpath://option[@value='NL']//preceding-sibling::option
    Wait Until Element Is Visible    xpath://option[@value='US']//preceding::option
    Close Browser

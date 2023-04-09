*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}    https://wwww.google.com


*** Test Cases ***
TestCase to demostrate Browser Window Operation Keywords in Robot FrameWork
    [Documentation]    This is sample test case to demostrate Browser Window Operation Keywords in Robot FrameWork
    
    Open Browser    https://www.salesforce.com/    Chrome    alias=ChromeRCV  
    Click Button    xpath://button[@id='onetrust-accept-btn-handler']
    Maximize Browser Window
    Sleep    3s

    Wait Until Element Is Visible    xpath://span[contains(text(), 'Gratis Trial')]
    Click Element    xpath://span[contains(text(), 'Gratis Trial')]

    @{WindowHandles}=    Get Window Handles
    Sleep    3s

    @{WindowIdentifier}=    Get Window Identifiers
    Sleep    3s

    @{WindowName}=    Get Window Names
    Sleep    3s

    @{WindowTitle}=    Get Window Titles
    Sleep    3s

    Set Window Position    100    200
    Sleep    3s

    ${x}    ${y}=    Get Window Position
    Log    ${x}
    Log    ${y}

    Set Window Size    800    600

    ${width}    ${height}=    Get Window Size
    Log    ${width}
    Log    ${height}    
    Sleep    3s

    Switch Window    ${WindowHandles}[0]
    Log    ${WindowHandles}[0]
    Sleep  3s

    Close Window
    Sleep    3s
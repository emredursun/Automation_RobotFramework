*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}    https://wwww.google.com


*** Test Cases ***
TestCase to demostrate Browser Operation Keywords in Robot FrameWork
    [Documentation]    This is sample test case to demostrate Browser Operation Keywords in Robot FrameWork
    
    Open Browser    https://www.google.com    chrome    alias=ChromeRCV
    Click Element    css:#L2AGLb > div    

    Maximize Browser Window

    Open Browser    about:blank    firefox    alias=RCVFF

    @{alias} =    Get Browser Aliases
    Log    ${alias}[1]
    
    @{browser_ID} =    Get Browser Ids
    Log    ${browser_ID}[1]

    Switch Browser    ChromeRCV

    Input Text    xpath://*[@name='q']    UdemyAcademy

    Sleep    3s

    Switch Browser    ${alias}[1]
    # Switch Browser    RCVFF

    Go To    https://www.salesforce.com/

    Sleep    3s

    Close All Browsers
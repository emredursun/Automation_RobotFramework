*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
TestCase to demostrate WebLocators in Robot FrameWork
    [Documentation]    This is sample test case to demostrate WebLocators in Robot FrameWork

    Open Browser    https://www.ebay.com    chrome
    Maximize Browser Window
    Input Text    id:gh-ac    robot  
    Sleep    4s
    Close Browser
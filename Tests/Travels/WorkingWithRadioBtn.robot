*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}      Chrome
${url}    https://www.computerhope.com/jargon/r/radiobut.htm
${alias}    ChromeRazer  


*** Test Cases ***
TestCase to demostrate Radio Button Operation Keywords
    [Documentation]    This is sample test case to demostrate Radio Button Operation Keywords in Robot FrameWork
    
    Open Browser    ${url}    ${browser}    ${alias} 
    Maximize Browser Window
    # Scroll Element Into View    css:input[type='radio'][value='V3']  
    Sleep    3s

    Page Should Contain Radio Button    css:input[type='radio'][value='V2']

    Page Should Not Contain Radio Button    css:input[type='radio'][value='V22222222']

    # Radio Button Should Not Be Selected    css:input[type='radio'][value='V2']

    # Scroll Element Into View    css:input[type='radio'][value='V5']

    Sleep    3s

    #  Select Radio Button    example    V5

    Radio Button Should Be Set To    example    V1

    Close All Browsers
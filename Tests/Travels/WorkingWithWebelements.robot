*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}      Chrome
${url}    https://www.google.com
${alias}    ChromeRazer  


*** Test Cases ***
TestCase to demostrate Browser Window Operation Keywords in Robot FrameWork
    [Documentation]    This is sample test case to demostrate Browser Window Operation Keywords in Robot FrameWork
    
    Open Browser    ${url}    ${browser}    ${alias} 
    Maximize Browser Window  
    Click Element    css:#L2AGLb > div 
    # Click Element    xpath://*[contains(text(), 'Alles accepteren')]

    ${attr} =    Get Element Attribute    xpath://*[@name='q']    id
    Log    ${attr}

    ${count} =    Get Element Count    css:*[class^='o3j99']
    Log    ${count}

    ${width}    ${height} =    Get Element Size    css:*[class^='o3j99']
    Log    ${width}    
    Log    ${height}

    Get WebElement    xpath://*[@name='q']

    @{webelements} =    Get WebElements    css:*[class^='o3j99']

    # Capture Element Screenshot    xpath://*[@name='q']

    Assign Id To Element    xpath://*[@name='q']    searchBoxID
    Page Should Contain Element    id:searchBoxID

    Element Should Be Focused    xpath://*[@id='searchBoxID']
    Element Should Be Visible    xpath://*[@id='searchBoxID']

    Input Text    xpath://*[@id='searchBoxID']    QA Automation ENgineer
    Clear Element Text    xpath://*[@id='searchBoxID']
    Click Element    xpath://*[@class= 'o3j99 LLD4me yr19Zb LS8OJ']
    
    Wait Until Element Is Visible    xpath:(//input[@value = 'Ik doe een gok'])[2]
    Cover Element    xpath:(//input[@value = 'Ik doe een gok'])[2]
    
    Element Attribute Value Should Be    xpath://*[@name='q']    id    searchBoxID
    
    Element Should Be Enabled    id:searchBoxID

    Element Should Not Be Visible    id:Emre
    
    Go To    ${url}
    Element Text Should Be    xpath://span[contains(text(), 'CO2-neutraal sinds 2007')]    CO2-neutraal sinds 2007
    Element Text Should Not Be    xpath://span[contains(text(), 'CO2-neutraal sinds 2007')]    CO2-neutraal sinds 2007777
    
    Element Should Contain    xpath://span[contains(text(), 'CO2-neutraal sinds 2007')]    CO2-neutraal
    Element Should Not Contain    xpath://span[contains(text(), 'CO2-neutraal sinds 2007')]    CO2-neutraalXXX
    
    Double Click Element    xpath://*[@name='q']
    Click Element At Coordinates    xpath://*[@name='q']    15    10

    # Element Should Be Disabled    xpath://*[@name='qName']

    Close All Browsers

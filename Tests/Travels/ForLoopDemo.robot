*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}      chrome
${URL}    https://www.google.com/



*** Test Cases ***
Test Case to demostrate FOR Loop in Robot FrameWork
    [Documentation]    Test Case to demostrate FOR Loop in Robot FrameWork

    Open Browser    ${URL}    ${BROWSER}
    Click Element    css:#L2AGLb > div 
    Maximize Browser Window
    
    Input Text    xpath://*[@name='q']    QA Automation Engineer
    Press Keys    xpath:/html/body/div[1]/div[3]/form/div[1]/div[1]/div[4]/center/input[1]    RETURN

    @{results_on_page}=    Get WebElements    xpath://*[@id='rso']/div

    FOR    ${element}    IN    @{results_on_page}
        ${text}=    Get Text    ${element}
    END

    Close Browser


# Few key points to remember about FOR loop are:
# Loops allow us to iterate over a sequence
# You can use Loops to - Loop through a list of elements, Repeat a single keyword several times, Loop through range of numbers (1-10)
# Loops in Robot Framework begin with "FOR"
# Example:

# FOR  ${var}  IN  @{list}      
# Keyword ${var}
# END
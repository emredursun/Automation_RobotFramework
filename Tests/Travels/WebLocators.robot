*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
TestCase to demostrate eBay Page WebLocators in Robot FrameWork
    [Documentation]    This is sample test case to demostrate WebLocators in Robot FrameWork

    Open Browser    https://www.ebay.com    chrome
    Maximize Browser Window
    # Input Text    id:gh-ac    robot
    # Click Link    link:About eBay
    Click Link    partial link:Seasonal Sales
    Sleep    4s
    Close Browser

    
TestCase to demostrate Salesforce Page WebLocators in Robot FrameWork
    [Documentation]    This is sample test case to demostrate Salesforce Page WebLocators in Robot FrameWork

    Open Browser    https://www.salesforce.com/nl/form/signup/freetrial-sales-essentials/    chrome
    Maximize Browser Window
    # Rejects Cookies
    Click Element    //*[@id="onetrust-reject-all-handler"]
    Input Text    //input[@name='UserFirstName']    Emre
    Input Text    //input[@name='UserLastName']    Dursun
    Sleep    4s
    Close Browser
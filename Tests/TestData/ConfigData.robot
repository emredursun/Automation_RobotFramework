*** Variables ***
#Configuration Data
${browser}      chrome
${url}    https://www.saucedemo.com/

# Locators
${txtbox_username}    xpath://input[@id='user-name']
${txtbox_password}    xpath://input[@id='password']
${btn_login}    xpath://input[@id='login-button']
${txt_error}    xpath://*[@id="login_button_container"]/div/form/div[3]/h3
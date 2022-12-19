*** Settings ***
Documentation       Belajar Robotfrmawork dengan website https://www.saucedemo.com/

Library             SeleniumLibrary


*** Variables ***
${browser}              chrome
${url_login}            https://www.saucedemo.com/
${inventory_page}       https://www.saucedemo.com/inventory.html
${field_username}       //*[@id="user-name"]
${field_password}       //*[@id="password"]
${valid_username}       standard_user
${valid_password}       secret_sauce
${btn_login}            //*[@id="login-button"]
${delay}                1
${error_notif}          //*[@id="login_button_container"]/div/form/div[3]/h3
${invalid username}     lololololo
${invalid password}     lololololo


*** Keywords ***
Open Browser To Login Page
    Open Browser    ${url_login}    ${browser}
    Maximize Browser Window
    Set Selenium Speed    ${delay}
    Login Page Should Be Open

Login Page Should Be Open
    Title Should Be    Swag Labs

Go To Login Page
    Go To    ${url_login}
    Login Page Should Be Open

Masukan Username
    [Arguments]    ${username}
    Input Text    ${field_username}    ${valid_username}

Masukan Password
    [Arguments]    ${password}
    Input Text    ${field_password}    ${valid_password}

Submit Login
    Click Button    ${btn_login}

Inventory Page Should Be Open
    Location Should Be    ${inventory_page}
    Title Should Be    Swag Labs

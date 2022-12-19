*** Settings ***
Documentation       A test suite with a single test for valid login.
...
...                 This test has a workflow that is created using keywords in
...                 the imported resource file.

Resource            src.robot
Library             String
Test Template       Login With Invalid Credential Should Fail
Suite Setup         Open Browser To Login Page
Suite Teardown      Close Browser
Test Setup          Go To Login Page


*** Test Cases ***    USER NAME    PASSWORD
Invalid username    ${invalid username}    ${valid_password}
    [Documentation]    Test to verify that the user can log in to the application
    [Tags]    smoke

Invalid password    ${valid_username}    ${invalid password}
    [Documentation]    Test to verify that the user can log in to the application
    [Tags]    smoke
Invalid Username And Password    ${invalid username}    ${invalid password}
    [Documentation]    Test to verify that the user can log in to the application
    [Tags]    smoke
Empty Username    ${Empty}    ${valid_password}
    [Documentation]    Test to verify that the user can log in to the application
    [Tags]    smoke
Empty Password    ${valid_username}    ${Empty}
    [Documentation]    Test to verify that the user can log in to the application
    [Tags]    smoke
Empty Username And Password    ${Empty}    ${Empty}
    [Documentation]    Test to verify that the user can log in to the application
    [Tags]    smoke

*** Keywords ***
Login With Invalid Credential Should Fail
    [Arguments]    ${username}    ${password}
    Masukan Username    ${username}
    Masukan Password    ${password}
    Submit Login
    Login Should Have Failed
Login Should Have Failed
    Should Be String    Epic sadface: Username and password do not match any user in this service

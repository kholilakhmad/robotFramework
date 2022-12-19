*** Settings ***
Documentation       A test suite with a single test for valid login.
...
...                 This test has a workflow that is created using keywords in
...                 the imported resource file.

Resource            src.robot


*** Test Cases ***
Valid Login
    [Documentation]    Test to verify that the user can log in to the application
    [Tags]    smoke
    Open Browser To Login Page
    Masukan Username    ${valid_username}
    Masukan Password    ${valid_password}
    Submit Login
    Inventory Page Should Be Open
    [Teardown]    Close Browser

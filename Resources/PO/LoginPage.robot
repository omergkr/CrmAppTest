*** Settings ***
Library    SeleniumLibrary
Resource    C:/Users/ÖmerGöker/PycharmProjects/CrmAppTest/Resources/Common_variables.robot


*** Variables ***
${USER_EMAIL}    id=email-id
${USER_PASSWORD}    id=password

*** Keywords ***
Log in with valid credentials

Verify login page
    wait until page contains    Login


Fill email field
    [Arguments]    ${email}
    input text    ${USER_EMAIL}      ${email}


Fill password field
    [Arguments]    ${password}
    input text    ${USER_PASSWORD}     ${password}

Click Submit button
    click button    Submit
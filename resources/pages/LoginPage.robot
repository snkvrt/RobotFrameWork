*** Settings ***
Library    SeleniumLibrary
Resource    ../properties.robot

*** Variables ***
${LOGIN_USERNAME}       id=user-name
${LOGIN_PASSWORD}       id=password
${LOGIN_BUTTON}         id=login-button
${ERROR_MESSAGE}        class=error-button

*** Keywords ***
Open Login Page
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Insert Username
    [Arguments]    ${username}
    Input Text    ${LOGIN_USERNAME}    ${username}

Insert Password
    [Arguments]    ${password}
    Input Text    ${LOGIN_PASSWORD}    ${password}

Click Login Button
    Click Button    ${LOGIN_BUTTON}

Error Message Should Be Visible
    Element Should Be Visible    ${ERROR_MESSAGE}

Login With Valid Credentials
    Insert Username    ${VALID_USERNAME}
    Insert Password    ${VALID_PASSWORD}
    Click Login Button
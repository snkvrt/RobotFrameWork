*** Settings ***
Resource    ../resources/pages/LoginPage.robot
Resource    ../resources/keywords/SetupTeardow.robot
Resource    ../resources/properties.robot
Resource    ../resources/pages/ProductPage.robot

Test Setup    Mon Setup
Test Teardown    Mon Teardown

*** Test Cases ***
Valid Login Should Redirect To Products Page
    Insert Username    ${VALID_USERNAME}
    Insert Password    ${VALID_PASSWORD}
    Click Login Button
    Verify Products Page Is Displayed

Invalid Login Should Show Error Message
    Insert Username    ${VALID_USERNAME}
    Insert Password    ${INVALID_PASSWORD}
    Click Login Button
    Error Message Should Be Visible
*** Settings ***
Library    SeleniumLibrary
Resource    ../pages/LoginPage.robot

*** Keywords ***
Mon Setup
    Open Login Page

Mon Teardown
    Close Browser
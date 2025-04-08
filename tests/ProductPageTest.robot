*** Settings ***
Resource    ../resources/pages/LoginPage.robot
Resource    ../resources/pages/ProductPage.robot
Resource    ../resources/keywords/SetupTeardow.robot

Test Setup    Mon Setup
Test Teardown    Mon Teardown


*** Test Cases ***
Add Product To Cart Should Update Cart Badge
    Login With Valid Credentials
    Add First Product To Cart
    Verify Cart Badge Count    1
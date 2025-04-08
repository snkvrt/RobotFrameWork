*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${PRODUCTS_TITLE}       css=.title
${ADD_TO_CART_BUTTON}   css=button.btn_inventory:first-of-type
${CART_BADGE}           css=.shopping_cart_badge
${CART_LINK}            css=.shopping_cart_link

*** Keywords ***
Verify Products Page Is Displayed
    Wait Until Element Is Visible    ${PRODUCTS_TITLE}
    Element Should Contain    ${PRODUCTS_TITLE}    Products

Add First Product To Cart
    Click Button    ${ADD_TO_CART_BUTTON}

Verify Cart Badge Count
    [Arguments]    ${expected_count}
    Element Should Contain    ${CART_BADGE}    ${expected_count}

Go To Cart
    Click Element    ${CART_LINK}
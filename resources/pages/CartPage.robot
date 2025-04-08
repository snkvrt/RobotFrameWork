*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${CART_ITEM}           class=cart_item
${CHECKOUT_BUTTON}     id=checkout

*** Keywords ***
Verify Cart Contains Items
    [Arguments]    ${expected_count}
    ${count}=    Get Element Count    ${CART_ITEM}
    Should Be Equal As Numbers    ${count}    ${expected_count}

Click Checkout Button
    Click Button    ${CHECKOUT_BUTTON}
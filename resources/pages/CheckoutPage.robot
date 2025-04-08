*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${CHECKOUT_FIRSTNAME}       id=first-name
${CHECKOUT_LASTNAME}        id=last-name
${CHECKOUT_ZIPCODE}         id=postal-code
${CHECKOUT_CONTINUE_BTN}    id=continue
${CHECKOUT_FINISH_BTN}      id=finish
${CONFIRMATION_HEADER}      css=.complete-header

*** Keywords ***
Fill Checkout Information
    [Arguments]    ${firstname}    ${lastname}    ${zipcode}
    Input Text    ${CHECKOUT_FIRSTNAME}    ${firstname}
    Input Text    ${CHECKOUT_LASTNAME}     ${lastname}
    Input Text    ${CHECKOUT_ZIPCODE}      ${zipcode}

Click Continue Button
    Click Button    ${CHECKOUT_CONTINUE_BTN}

Click Finish Button
    Click Button    ${CHECKOUT_FINISH_BTN}

Verify Order Confirmation
    Wait Until Element Is Visible    ${CONFIRMATION_HEADER}
    Element Should Contain    ${CONFIRMATION_HEADER}    Thank you for your order!
*** Settings ***
Resource    ../resources/pages/LoginPage.robot
Resource    ../resources/pages/ProductPage.robot
Resource    ../resources/pages/CartPage.robot
Resource    ../resources/pages/CheckoutPage.robot
Resource    ../resources/keywords/SetupTeardow.robot
Resource    ../resources/properties.robot

Test Setup    Mon Setup
Test Teardown    Mon Teardown

*** Test Cases ***
Complete Checkout Process Should Show Confirmation
    # Étape 1: Connexion
    Login With Valid Credentials
    
    # Étape 2: Ajout produit au panier
    Add First Product To Cart
    Go To Cart
    
    # Étape 3: Vérification panier et checkout
    Verify Cart Contains Items    1
    Click Checkout Button
    
    # Étape 4: Remplissage informations
    Fill Checkout Information    John    Doe    12345
    Click Continue Button
    Click Finish Button
    
    # Étape 5: Vérification confirmation
    Verify Order Confirmation
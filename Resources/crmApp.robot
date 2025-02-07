*** Settings ***
Resource    ../Resources/PO/Home.robot
Resource    ../Resources/PO/signin.robot
Resource    ../Resources/PO/topNav.robot
Resource    ../Resources/PO/customers.robot
Resource    PO/addcustomer.robot

*** Variables ***




*** Keywords ***

Goto to "Home" page
    #Home.Navigate_to
    Home.Verify Page Loaded


Login with valid credentials
    [Arguments]    ${Nikos1}    ${Nikos2}
    topNav.Click "Sign In"
    signin.Verify Page Loaded
    signin.Login with valid credentials    ${Nikos1}    ${Nikos2}
    customers.Verify Page Loaded
Add new customer
    customers.Click add customers link
    addcustomer.Verify add cusromers page Loaded
    addcustomer.Add new customer
    addcustomer.click submit botton
    customers.Verify add customers successfully
Sign Out    
    topNav.Click "Sign Out"
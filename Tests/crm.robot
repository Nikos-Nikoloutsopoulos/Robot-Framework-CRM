
*** Settings ***
Documentation            This is a test document

Resource    ..//Resources/common.robot
Resource    ../Resources/crmApp.robot

Test Setup        common.Begin web test    
Test Teardown     common.End web test



*** Variables ***
${BROWSER} =     edge
${URL} =  https://automationplayground.com/crm/
${VALID_LOGIN_EMAIL} =  robot@gmail.com 
${VALID_LOGIN_PASSWORD} =  MyPassword!



*** Test Cases ***
Log in with valid credentials and add new customer
    
    crmApp.Goto to "Home" page
    crmApp.Login with valid credentials    ${VALID_LOGIN_EMAIL}     ${VALID_LOGIN_PASSWORD} 
    crmApp.Add new customer
    crmApp.Sign Out

Log in with valid credentials 
    
    crmApp.Goto to "Home" page
    crmApp.Login with valid credentials    ${VALID_LOGIN_EMAIL}     ${VALID_LOGIN_PASSWORD} 


Log in with valid credentials and sign out
    
    crmApp.Goto to "Home" page
    crmApp.Login with valid credentials    ${VALID_LOGIN_EMAIL}     ${VALID_LOGIN_PASSWORD} 
    crmApp.Sign Out

Test Home page Load    
    crmApp.Goto to "Home" page

 

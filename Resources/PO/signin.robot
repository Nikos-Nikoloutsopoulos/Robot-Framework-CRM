*** Settings ***
Library    SeleniumLibrary


*** Variables ***

${LOGIN_MESSAGE} =   Login


*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains    ${LOGIN_MESSAGE}


Login with valid credentials
    [Arguments]     ${EMAIL}    ${PASSWORD}
    Fill "email" field    ${EMAIL} 
    Fill "password" field    ${PASSWORD}
    Click "Submit" botton


Fill "email" field
    [Arguments]     ${EMAIL}   
    Input Text     id=email-id     text=${EMAIL}


Fill "password" field
    [Arguments]    ${PASSWORD}
    Input Password      locator=id=password    password=${PASSWORD}


Click "Submit" botton
    Click Button    id=submit-id
    Log    message=Second Page new customer
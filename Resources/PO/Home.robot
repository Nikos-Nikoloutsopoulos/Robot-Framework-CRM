*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${HOME_HEADER_LOADED} =  Customers Are Priority One



*** Keywords ***

Navigate_to
    Go To    url=${URL}  
Verify Page Loaded
    Wait Until Page Contains    ${HOME_HEADER_LOADED}
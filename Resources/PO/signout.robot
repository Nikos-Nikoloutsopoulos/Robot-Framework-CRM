*** Settings ***
Library    SeleniumLibrary


*** Variables ***

${PRES_SIGN_OUT_BUTTON} =  Signed Out


*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains    ${PRES_SIGN_OUT_BUTTON}

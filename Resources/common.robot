*** Settings ***
Library    SeleniumLibrary
Resource   ../Resources/PO/Home.robot

*** Variables ***




*** Keywords ***

Begin web test
    #Set Selenium Speed    0.2s
    Set Selenium Timeout    10s
    [Documentation]    This is my first test case
    [Tags]             1006    PC1    contact
    Log                Open the browser
    Open Browser       ${URL}   ${BROWSER}
    #Set Window Position    x=1    y=1
    #Set Window Size    width=1935    height=1090
    Log                message= Sign in the application
    Home.Verify Page Loaded

End web test
    Sleep              3s
    Close Browser

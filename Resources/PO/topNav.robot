*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${TOP_NAV_SIGNIN_LINK} =  id=SignIn
${TOP_NAV_SIGNOUT_LINK} =  Sign Out


*** Keywords ***    
Click "Sign In" 
    Click Link        ${TOP_NAV_SIGNIN_LINK}

Click "Sign Out"
    Click Link    ${TOP_NAV_SIGNOUT_LINK} 
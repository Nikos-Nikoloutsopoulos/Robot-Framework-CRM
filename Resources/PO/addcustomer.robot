*** Settings ***
Library    SeleniumLibrary


*** Variables ***

${ADD_CUSTOMERS_HEADER} =  Add Customer
${SUBMIT_ADD_NEW_CUSTOMER} =  Submit

*** Keywords ***
Verify add cusromers page Loaded
    Wait Until Page Contains   ${ADD_CUSTOMERS_HEADER}


Add new customer
    Input Text      locator=id=EmailAddress    text=nikos@gmail.com
    Input Text      locator=id=FirstName    text=Nikos
    Input Text      locator=id=LastName     text=Nikolas
    Input Text      locator=id=City     text=Dalas

    Select From List By Value    id=StateOrRegion    TX
    Select Radio Button    gender    value=male

    Select Checkbox     locator=promos-name

click submit botton
        Click Button      ${SUBMIT_ADD_NEW_CUSTOMER}      
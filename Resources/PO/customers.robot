*** Settings ***
Library    SeleniumLibrary


*** Variables ***

${CUSTOMER_HEADER_PAGE} =  Our Happy Customers
${CUSTOMERS_HEADER_LABEL} =   id=new-customer
${ADD_CUSTOMERS_SUCCESSFULLY} =  Success! New customer added.



*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains    ${CUSTOMER_HEADER_PAGE}

Click add customers link 
     Click Link      ${CUSTOMERS_HEADER_LABEL} 

Verify add customers successfully
     Wait Until Page Contains    ${ADD_CUSTOMERS_SUCCESSFULLY}    
    
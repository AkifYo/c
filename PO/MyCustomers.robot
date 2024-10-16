*** Settings ***
Library    SeleniumLibrary



*** Variables ***
${CUSTOMERS_HEADER_LABEL}=              Our Happy Customers
${CUSTOMERS_ADD_CUSTOMERS_LINK}=        id=new-customer
${CUSTOMERS_SUCCESS_LABEL}=              Success! New customer added.
*** Keywords ***
Verify Page Loaded
    wait until page contains    ${CUSTOMERS_HEADER_LABEL}

Click Add Customer Link
     click link                 ${CUSTOMERS_ADD_CUSTOMERS_LINK}

Verify Customer Added Succesfully
       wait until page contains    ${CUSTOMERS_SUCCESS_LABEL}
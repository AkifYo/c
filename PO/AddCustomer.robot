*** Settings ***
Library    SeleniumLibrary



*** Variables ***

${ADD_CUSTOMER_HEADER_LABEL}=                   Add Customer
${ADD_CUSTOMER_SUBMIT_BUTTON} =                 Submit
${ADD_CUSTOMER_EMAIL} =                         id=EmailAddress
${ADD_CUSTOMER_FIRSTNAME} =                     id=FirstName
${ADD_CUSTOMER_LASTNAME} =                      id=LastName
${ADD_CUSTOMER_CITY} =                          id=City
${ADD_CUSTOMER_STATE_DROPDOWN} =                id=StateOrRegion
${ADD_CUSTOMER_GENDER_RADIO} =                  gender
${ADD_CUSTOMER_PROMO_CHECKBOX} =                name=promos-name

${Url} =                    https://automationplayground.com/crm/


*** Keywords ***
Verify Page Loaded
    wait until page contains        ${ADD_CUSTOMER_HEADER_LABEL}

Add New Customer
    Fill Customers Fields
    Click Submit Button


Fill Customers Fields
    input text                      ${ADD_CUSTOMER_EMAIL}               jhondoe@gmail.com
    input text                      ${ADD_CUSTOMER_FIRSTNAME}           Jhon
    input text                      ${ADD_CUSTOMER_LASTNAME}            Doe
    input text                      ${ADD_CUSTOMER_CITY}                Dallas
    select from list by value       ${ADD_CUSTOMER_STATE_DROPDOWN}      TX
    select radio button             ${ADD_CUSTOMER_GENDER_RADIO}        female
    select checkbox                 ${ADD_CUSTOMER_PROMO_CHECKBOX}

Click Submit Button
    click button                    ${ADD_CUSTOMER_SUBMIT_BUTTON}

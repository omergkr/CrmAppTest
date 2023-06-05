*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${NEW_CUSTOMER_EMAIL}    id=EmailAddress
${NEW_CUSTOMER_FIRSTNAME}    id=FirstName
${NEW_CUSTOMER_LASTNAME}    id=LastName
${NEW_CUSTOMER_CITY}    id=City
${NEW_CUSTOMER_STATE}    id=StateOrRegion
${NEW_CUSTOMER_PROMOTION_CHECKBOX}    name=promos-name



*** Keywords ***

Verify Add Customer Page
    wait until page contains    Add Customer

Fill new customer email field
   input text    ${NEW_CUSTOMER_EMAIL}    omergoker@gmail.com
Fill new customer first name field
    input text    ${NEW_CUSTOMER_FIRSTNAME}    Omer
Fill new customer last name field
    input text    ${NEW_CUSTOMER_LASTNAME}    Goker
Fill new customer city field
    input text    ${NEW_CUSTOMER_CITY}    Krefeld
Select new customer state
    select from list by value   ${NEW_CUSTOMER_STATE}    NY
Select new customer gender
    select radio button    gender    male
Select promotional list checkbox
    select checkbox    ${NEW_CUSTOMER_PROMOTION_CHECKBOX}
Click new customer submit button
    click button    Submit


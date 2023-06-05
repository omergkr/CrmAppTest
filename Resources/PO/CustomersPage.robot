*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${NEW_CUSTOMER_BUTTON}    id=new-customer

*** Keywords ***

Verify Customers Page
    wait until page contains    Our Happy Customers

Click new customer button
     click link    ${NEW_CUSTOMER_BUTTON}

Verify the status of adding a new customer
    wait until page contains    Success! New customer added.
    [Return]    Success!
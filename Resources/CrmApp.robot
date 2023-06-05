*** Settings ***
Library    SeleniumLibrary
Library    C:/Users/ÖmerGöker/PycharmProjects/CrmAppTest/Libraries/MyCustomLibrary.py
Resource    ../Resources/PO/LoginPage.robot
Resource    ../Resources/PO/LandingPage.robot
Resource    ../Resources/PO/CustomersPage.robot
Resource    ../Resources/PO/AddCustomerPage.robot
*** Keywords ***

Sign in
    [Arguments]    ${email}    ${password}
    LandingPage.Click Sign in Button
    LoginPage.Verify login page
    LoginPage.Fill email field          ${email}
    LoginPage.Fill password field       ${password}
    LoginPage.Click Submit button


Add new Customer
    do something special
    CustomersPage.Verify Customers Page
    CustomersPage.Click new customer button
    AddCustomerPage.Verify Add Customer Page
    AddCustomerPage.Fill new customer email field
    AddCustomerPage.Fill new customer first name field
    AddCustomerPage.Fill new customer last name field
    AddCustomerPage.Fill new customer city field
    AddCustomerPage.Select new customer state
    AddCustomerPage.Select new customer gender
    Addcustomerpage.Select promotional list checkbox
    Addcustomerpage.Click new customer submit button
    ${ReturnedInfo}    CustomersPage.Verify the status of adding a new customer
    log    ${ReturnedInfo}










*** Settings ***
Documentation    This is some basic info about the whole suite
Library    SeleniumLibrary
Resource    ../Resources/Common_variables.robot
Resource    ../Resources/CommonApp.robot
Resource    ../Resources/CrmApp.robot



*** Test Cases ***
Shoould be able to add new customer
    [Documentation]    User should be add a new customer
    [Tags]    Smoke
    CommonApp.Begin Web Test
    CrmApp.Sign in    ${EMAIL}    ${PASSWORD}
    CrmApp.Add new Customer
    CommonApp.End Web Test


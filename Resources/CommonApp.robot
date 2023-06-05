*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/PO/LandingPage.robot

*** Variables ***


*** Keywords ***

Begin Web Test
    LandingPage.Load
    LandingPage.Verify Page Loaded

End Web Test
    close browser

Insert Testing Data
    # TODO create testing data
    log    i am setting up the test data...

Cleanup Testing Data
    log    i am cleaning up the test data...
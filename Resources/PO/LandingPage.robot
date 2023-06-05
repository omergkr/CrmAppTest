*** Settings ***
Library    SeleniumLibrary
Resource    C:/Users/ÖmerGöker/PycharmProjects/CrmAppTest/Resources/Common_variables.robot
*** Keywords ***
Load
    # set selenium speed          .2s
    # set selenium timeout        10s
    log                         Starting the tast case
    open browser   about:blank    ${BROWSER}
    go to    ${URL}
    # set window position         x=341    y=169
    # set window size             width=1935   height=1090

Verify Page Loaded
    wait until page contains    Customers Are Priority One!

Click Sign in Button
    click link    Sign In
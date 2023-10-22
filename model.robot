*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER}         chrome
${HOMEPAGE}        google.pl

*** Test Cases ***
TextBox Tests
    Open App

    [Teardown]  Close App

*** Keywords ***
Open App
    Open Browser          ${HOMEPAGE}      ${BROWSER}
    Set Window Size       1920            1080
    Set Window Position   0  0



Close App
    Close Browser

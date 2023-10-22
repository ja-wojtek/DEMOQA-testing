*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER}         chrome
${HOMEPAGE}        https://demoqa.com
${LIST}

*** Test Cases ***
TextBox Tests
    Open App
    Go To Dropdown

    [Teardown]  Close App

*** Keywords ***
Open App
    Open Browser          ${HOMEPAGE}      ${BROWSER}
    Set Window Size       1920            1080
    Set Window Position   0  0

Go To Dropdown
    Go To                 ${HOMEPAGE}/select-menu      
    ${LIST} =  Get List Items  id:oldSelectMenu
    ${COUNT} =  Get Length  ${LIST}
    ${NUMBER} =  Evaluate  random.sample(range(0,${COUNT}), 1)  random
    Log  "${COUNT}"  console=True
    Log  "${NUMBER}"  console=True
    Select From List By Index  id:oldSelectMenu  ${NUMBER}[0]

Close App
    Close Browser

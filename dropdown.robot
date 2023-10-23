*** Settings ***
Library  SeleniumLibrary
Resource  resources.robot

*** Variables ***
${LIST}

*** Test Cases ***
TextBox Tests
    Open App
    Go To Dropdown

    [Teardown]  Close App

*** Keywords ***
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

*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER}         chrome
${HOMEPAGE}        https://demoqa.com/

*** Test Cases ***
TextBox Tests
    Open App
    Go To Text Box Page

    [Teardown]  Close App

*** Keywords ***
Open App
    Open Browser          ${HOMEPAGE}      ${BROWSER}
    Set Window Size       1920            1080
    Set Window Position   0  0

Go To Text Box Page
    Click Element         //body/div[@id='app']/div[@class='body-height']/div[@class='home-content']/div[@class='home-body']/div[@class='category-cards']/div[1]
    Click Element         id:item-0
    Input Text            id:userName  test
    Input Text            id:userEmail  test@example.com
    Input Text            id:currentAddress  qwerty
    Input Text            id:permanentAddress  qwertqwerty
    Click Button          id:submit

Close App
    Close Browser

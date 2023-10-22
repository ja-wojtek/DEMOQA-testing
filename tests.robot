*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER}         chrome
${HOMEPAGE}        https://demoqa.com/

*** Test Cases ***
TextBox Tests
    Open App
    Go To Text Box Page
    Go To Radio Button Page

    [Teardown]  Close App

*** Keywords ***
Open App
    Open Browser          ${HOMEPAGE}      ${BROWSER}
    Set Window Size       1920            1080
    Set Window Position   0  0

Go To Text Box Page
    Click Element         //body/div[@id='app']/div[@class='body-height']/div[@class='home-content']/div[@class='home-body']/div[@class='category-cards']/div[1]/div[1]/div[2]/*[1]
    Click Element         //span[contains(text(),'Text Box')]
    Element Text Should Be  //label[@id='userName-label']  Full Name

Go To Radio Button Page
    Click Element         //span[contains(text(),'Radio Button')]
    Click Element         //label[contains(text(),'Impressive')]

Close App
    Close Browser

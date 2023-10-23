*** Keywords ***
Open App
    Open Browser          ${HOMEPAGE}      ${BROWSER}
    Set Window Size       1920            1080
    Set Window Position   0  0

*** Variables ***
${BROWSER}         chrome
${HOMEPAGE}        https://demoqa.com
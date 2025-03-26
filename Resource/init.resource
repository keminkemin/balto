*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${baseUrlFr}    https://www.balto.fr/
${browser}    CHROME
${seleniumSpeed}       0.3 seconds
${seleniumWaitSpeed}  0.5 seconds
${seleniumTimeout}     30 seconds

*** Keywords ***
Open browers and go to balto.fr
    Open Browser    ${baseUrlFr}    ${browser}    
    Maximize Browser Window

Configure selenium
    Set Selenium Speed              ${seleniumSpeed}
    Set Selenium Implicit Wait      ${seleniumWaitSpeed}
    Set Selenium Timeout            ${seleniumTimeout}

Exit Selenium
    Close All Browsers
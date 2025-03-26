*** Settings ***
Resource    init.resource
Variables    locator.py

*** Keywords ***
user in homepage fr
    Element Should Be Visible    ${complements}

user go to articulation
    Mouse Over    ${complements}
    Click Element    ${articulation}

user in page:
    [Arguments]    ${path}
    ${url} =    Get Location
    Should Be Equal    ${url}    ${baseUrlFr}${path}
    
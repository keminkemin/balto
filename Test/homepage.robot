*** Settings ***
Resource    ../Resource/homepage.resource

Suite Setup    Configure selenium
Suite Teardown    Exit Selenium

Test Setup    Open browers and go to balto.fr

*** Test Cases ***
User able to open supplement page
    Given user in homepage fr
    When user go to articulation
    Then user in page:    products/complement-articulations
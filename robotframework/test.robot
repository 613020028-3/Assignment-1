*** Settings ***
Library         SeleniumLibrary

Test Setup       Open Browser And Go To Page
Test Teardown    Close Browser
 
*** Variables ***
${FORM_URL}         https://www.youtube.com
${BROWSER}          chrome
 
*** Test Cases ***
Page Should Show Header
    [Documentation]     When visit the page it should show the text Hello World
    Title Should be     Youtube
 
*** Keywords ***
Open Browser And Go To Page
    Open Browser    ${FORM_URL}   ${BROWSER}
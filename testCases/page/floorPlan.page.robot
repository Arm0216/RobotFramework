*** Settings ***
Library  SeleniumLibrary
Variables  floorPlanPage.py

*** Variables ***
${elem} =   Get From List     ${settingsList} 0

*** Keywords ***
Click On Hamburger Menu
    Click Element    ${hamburgerMenu}

Open Settings List
    Click Element   ${settingsButton}

Scroll Down Left Menu
    [Arguments]  ${scrollElem}
     Scroll element into view       ${scrollElem}

Open Floor Plan Page
    Click Element   ${settingsList}


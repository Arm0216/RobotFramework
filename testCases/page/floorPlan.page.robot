*** Settings ***
Library  SeleniumLibrary
Variables  floorPlanPage.py

*** Variables ***
${elem} =   Get From List     ${settingsList} 0
${table}    Get From List       ${tableList} 0

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

Drag And Drop Table to the Table Dropable Area
    execute javascript      var element=document.querySelector('[class="info-tb-se"]');     element.remove();
    Drag and drop   xpath:/html/body/section/div/div[1]/div/div[1]/div/div/div/div[1]/div/div[1]/img     ${tableArea}


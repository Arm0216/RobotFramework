*** Settings ***
Library  SeleniumLibrary
Resource  page/floorPlan.page.robot
Resource  page/loginPage.robot
Resource  ../verifications/floorPlan.verify.robot
Variables  page/floorPlanPage.py
Test Setup  Oepn My Browser  ${url}  ${browser}
Test Teardown   Close Browser


*** Variables ***
${url}         https://dev-restaurants.summerize.io
${browser}     Chrome
${username}    jeck@gmail.com
${pass}     123456789
${newReservation}       css:.btn-new-res

*** Test Cases ***
Navigate To The Floot Page
    Login    ${username}    ${pass}
    Click On Hamburger Menu
    Wait Until Element Is Visible   css:.span-logo-re
    Scroll Down Left Menu     ${settingsButton}
    Open Settings List
    Scroll Down Left Menu     ${newReservation}
    Open Floor Plan Page
    Verify Success Open The Floor Plan Page
    Drag And Drop Table to the Table Dropable Area
    Verify Success Drag And Drop The Table
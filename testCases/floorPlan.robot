*** Settings ***
Library  SeleniumLibrary
Resource  page/floorPlan.page.robot
Resource  page/loginPage.robot
Resource  ../verifications/floorPlan.verify.robot
Variables  page/floorPlanPage.py
Test Setup  Login    ${username}    ${pass}
Test Teardown   Close Browser


*** Variables ***
${username}    jeck@gmail.com
${pass}     123456789
${newReservation}       css:.btn-new-res
${logo}         css:.span-logo-re
${urlFloorPage}         https://dev-restaurants.summerize.io/Floors

*** Test Cases ***
Navigate To The Floot Page
    Click On Hamburger Menu
    Wait Until Element Is Visible   ${logo}
    Scroll Down Left Menu     ${settingsButton}
    Open Settings List
    Scroll Down Left Menu     ${newReservation}
    Open Floor Plan Page
    Verify Success Open The Floor Plan Page

Add and delete new table with
    Go to  ${urlFloorPage}
    Drag And Drop Table to the Table Dropable Area
    Verify Success Drag And Drop The Table
    Wait Until Element Is Visible   ${tableNameInput}
    Fill in all field
    Verify Success Add New Table
    Delete Tabel
    Veify Success Message Is Shown
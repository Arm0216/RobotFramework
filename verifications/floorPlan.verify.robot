*** Settings ***
Library  SeleniumLibrary
Variables  ../testCases/page/floorPlanPage.py


*** Keywords ***
Verify Success Open The Floor Plan Page
     Title should be    Floor Plan - Life

Verify Success Drag And Drop The Table
    Page Should Contain Element      ${createTableNumberWindow}

Verify Success Add New Table
    Page Should Contain Element      ${dragTable}

Veify Success Message Is Shown
    Page Should Contain Element      ${successMessageContainer}
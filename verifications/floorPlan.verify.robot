*** Settings ***
Library  SeleniumLibrary
Variables  ../testCases/page/floorPlanPage.py

*** Variables ***



*** Keywords ***
Verify Success Open The Floor Plan Page
     Title should be    Floor Plan - Life

Verify Success Drag And Drop The Table
    Page Should Contain Element      ${createTableNumberWindow}
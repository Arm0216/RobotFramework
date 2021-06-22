*** Settings ***
Library  SeleniumLibrary
Variables  ../testCases/page/loginPage.py

*** Keywords ***
Verify Seccessfull Login
    title should be     Dashboard - Life
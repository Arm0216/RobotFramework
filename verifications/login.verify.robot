*** Settings ***
Library  SeleniumLibrary
Variables  ../testCases/page/loginPage.py

*** Keywords ***
Verify Seccessfull Login
    title should be     Dashboard - Life

Verify Seccessfull Open Forgot Passowrd Page
    title should be     Reset Password - Restaurant

Verify Seccess message
    Page should contain   You have already requested to reset your password.

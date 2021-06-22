
*** Settings ***
Library  SeleniumLibrary
Resource  page/loginPage.robot
Resource  ../verifications/login.verify.robot
Test Setup  Oepn My Browser  ${url}  ${browser}
Test Teardown   Close Browser


*** Variables ***
${url}         https://dev-restaurants.summerize.io
${browser}     Chrome
${username}    jeck@gmail.com
${pass}     123456789


*** Test Cases ***
Login With Correct Email and Password
   Oepn My Browser  ${url}  ${browser}
   Login    ${username}    ${pass}
   Verify Seccessfull Login

Change Password With Forget Password
    Click on Forgot Password
    Verify Seccessfull Open Forgot Passowrd Page
    Fiel in email      ${username}
    Click On Reset Button
    Verify Seccess message

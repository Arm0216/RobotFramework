
*** Settings ***
Library  SeleniumLibrary
Resource  page/loginPage.robot
Resource  ../verifications/login.verify.robot


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
   close browser

*** Settings ***
Library  SeleniumLibrary
Variables  loginPage.py

*** Variables ***
${url}         https://dev-restaurants.summerize.io
${browser}     Chrome

*** Keywords ***
Oepn My Browser
    [Arguments]  ${url}     ${browser}
    Open browser    ${url}  ${browser}
    Maximize browser window
Login
    [Arguments]  ${username}   ${pass}
    Oepn My Browser     ${url}      ${browser}
    input text   ${email}       ${username}
    input text   ${password}    ${pass}
    click button   ${buttonLogin}
Click on Forgot Password
    click link    ${forgotPassword}

Fiel in email
    [Arguments]  ${username}
    input text     ${email}       ${username}

Click On Reset Button
    click button    ${forgotPasswordButton}


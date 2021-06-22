*** Settings ***
Library  SeleniumLibrary
Variables  loginPage.py

*** Keywords ***
Oepn My Browser
    [Arguments]  ${url}     ${browser}
    Open browser    ${url}  ${browser}
    Maximize browser window
Login
    [Arguments]  ${username}   ${pass}
    input text   ${email}       ${username}
    input text   ${password}    ${pass}
    click button   ${buttonLogin}
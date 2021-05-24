
*** Settings ***
Library  SeleniumLibrary
Variables  ./variables.py



*** Test Cases ***
searchTest
   browser open     ${url}  ${browser}
   input text    ${text}   Python robot
   click button   ${searchButton}
   click link   ${video}
   close browser

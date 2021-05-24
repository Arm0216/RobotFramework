
*** Settings ***
Library  SeleniumLibrary
Variables  ./variables.py



*** Test Cases ***
searchTest
   open browser     ${url}     ${browser}
   input text    ${text}   Python robot
   click button   ${searchButton}
   click link   ${video}
   close browser
search
   open browser     ${url}     ${browser}
   input text    ${text}   Python robotframework
   click button   ${searchButton}
   click link   ${video}
   close browser


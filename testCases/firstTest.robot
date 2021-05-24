
*** Settings ***
Library  SeleniumLibrary
Variables  ./variables.py



*** Test Cases ***
searchTest
   Create Webdriver     Chrome     executable_path=/home/user/PycharmProjects/pythonProject1/chromedriver
   go to     ${url}
   input text    ${text}   Python robot
   click button   ${searchButton}
   click link   ${video}
   close browser

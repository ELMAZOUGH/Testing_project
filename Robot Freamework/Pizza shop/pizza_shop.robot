*** Settings ***
Documentation       This file contains test cases for the login functionality.

Library             SeleniumLibrary

Suite Setup         Open browser    ${url}    ${browser}
Suite Teardown      Close browser


*** Variables ***
${url}          https://dineshvelhal.github.io/testautomation-playground/login.html
${browser}      chrome
${Username}     admin
${Password}     admin
${Nmber}        5

*** Test Cases ***
First Test
    Double Click Element    //*[@id="user"]
   




Login
    Input Text       //*[@id="user"]   ${Username}
    Sleep    2s
    Click Element    //*[@id="password"]
    Sleep    2s
    Input Text       //*[@id="password"]   ${Password}
    Click Element    //*[@id="login"]
    Sleep    0.5s
Customize
   Click Element  //*[@id="pizza_order_form"]/div[1]/div[2]/div/div[1]/label  
   Sleep    2s
   Click Element  //*[@id="select_flavor"]   
   Click Element  //*[@id="select_flavor"]/option[2]
   Click Element  //*[@id="pizza_order_form"]/div[3]/div[2]/div/div[1]/label
   Click Element  //*[@id="pizza_order_form"]/div[4]/div[2]/div/div[1]/div/label
   Click Element  //*[@id="quantity"]
   Input Text     //*[@id="quantity"]       ${Nmber} 
confirm   
   Click Element  //*[@id="submit_button"]
    # Wait Until Page Contains
    Capture Page Screenshot



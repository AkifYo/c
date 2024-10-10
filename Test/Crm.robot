*** Settings ***
Documentation   This is some basic ino about the whole suits
Library         SeleniumLibrary


*** Variables ***
  

*** Test Cases ***
Shoud be able to add new customer
    [Documentation]     This is some basic info about the test
    [Tags]              1006  Smoke  Contacts
    Log                 Starting the test case!
    Open Browser        https://automationplayground.com/crm/  chrome  
    sleep               3
    close browser

*** Keywords ***

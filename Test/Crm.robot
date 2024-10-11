*** Settings ***
Documentation   This is some basic ino about the whole suits
Library         SeleniumLibrary

#run the script
# robot -d results test/crm
*** Variables ***
  

*** Test Cases ***
Shoud be able to add new customer
    [Documentation]     This is some basic info about the test
    [Tags]              1006  Smoke  Contacts
    Log                 Starting the test case!
    Open Browser        https://automationplayground.com/crm/  chrome

    #Initialize Selenium
    Maximize Browser Window
    Set selenium speed  .2s
    Set selenium timeout  10s  
    #Open browser with custom place
    #Set window position  x=341  y=169
    #Set window size  witdh=1920  height=1090
    Page Should Contain          Customers Are Priority One
    Click link                   SignIn

    Page Should Contain           Login

    input text                    id=email-id    admin@robotframeworktutorial.com
    input text                    id=password    qwer
    click button                  id=submit-id

    Page Should Contain           Our Happy Customers

    click link                    id=new-customer

    input text                    id=EmailAddress    jhondoe@gmail.com
    input text                    id=FirstName       Jhon
    input text                    id=LastName        Doe
    input text                    id=City            Dallas
    select from list by value    id=StateOrRegion        TX
    select radio button        gender        female
    select checkbox            name=promos-name
    click button                Submit
    wait until page contains    Success! New customer added.
    Sleep                         3s

    Close browser

*** Keywords ***

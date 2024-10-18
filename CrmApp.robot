*** Settings ***
Resource    ../Resources/PO/Home.robot
Resource    ../Resources/PO/AddCustomer.robot
Resource    ../Resources/PO/MyCustomers.robot
Resource    ../Resources/PO/SignIn.robot
Resource    ../Resources/PO/LoggedOut.robot
Resource    ../Resources/PO/TopNav.robot


*** Variables ***



*** Keywords ***
Go to "Home" Page
    Home.Navigate to
    Home.Verify Page Loaded

Login With Valid Credentials
    [Arguments]                              ${Valid_Login_Email}    ${Valid_Login_Password}
    TopNav.Click "Sign In" Link
    SignIn.Verify Page Loaded
    SignIn.Login With Valid Credentials      ${Valid_Login_Email}     ${Valid_Login_Password}
    MyCustomers.Verify Page Loaded

Add New Customer
    MyCustomers.Click Add Customer Link
    AddCustomer.Verify Page Loaded
    AddCustomer.Add New Customer
    Verify Customer Added Succesfully
Sign Out
    TopNav.Click "Sign Out" Link
    LoggedOut.Verify Page Loaded
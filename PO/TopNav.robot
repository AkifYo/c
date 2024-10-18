*** Settings ***
Library    SeleniumLibrary



*** Variables ***
${TOP_NAV_SIGNIN_LINK} =                        id=SignIn
${TOP_NAV_SIGNOUT_LINK}=                        Sign Out



*** Keywords ***
Click "Sign In" Link
    click link              ${TOP_NAV_SIGNIN_LINK}
Click "Sign Out" Link
    click link              ${TOP_NAV_SIGNOUT_LINK}
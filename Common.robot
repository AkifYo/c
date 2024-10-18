*** Settings ***
Library    SeleniumLibrary



*** Variables ***


*** Keywords ***
Begin Web Test


    open browser        about:blank    ${Browser}

    #Initialize Selenium
    maximize browser window

    set selenium timeout    10s
    #Open browser with custom place
    #Set window position  x=341  y=169
    #Set window size  witdh=1920  height=1090




End Web Test

    close all browsers
*** Settings ***
Resource  ../Common.robot
Library  SeleniumLibrary

*** Keywords ***
Verify Page Loaded
    Go To    https://accounts.uat.env.acquire.io/login?endpoint=account&return=&account=lo4h4a
    Title Should Be   Acquire Admin Login — Acquire Admin 

Enter Credentials
    Input Text    id=usernameOrEmail    pinup@tafmail.com
    Input Text    id=password    Hereisanew1!
    Click Element  xpath=//button[@type='submit']
    

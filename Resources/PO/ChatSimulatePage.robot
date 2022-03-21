*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Go to Chat Simulate Page
    Sleep    5
    Click Element   link=Go to Chat Simulate Page
    ${tab1}=        Switch Window    NEW  # switch to new tab and get original tab handle 
    Sleep    5
    Wait Until Page Contains    Welcome to your chat
    Sleep    5
    Select Frame    name:aio-launcher-frame
    Wait Until Page Contains Element  css=div.aio-launcher-close-icon > svg
    Mouse Over  css=div.aio-launcher-close-icon > svg
    Click Element   css=div.aio-launcher-close-icon > svg
    Unselect Frame
    Select Frame    xpath=//iframe[@src='about:blank'] 
    Sleep    5
    Click Element   name:message
    Input Text      name:message    hi
    Click Element   xpath=(.//*[normalize-space(text()) and normalize-space(.)='hi'])[2]/following::*[name()='svg'][3] 
    Switch Window   ${tab1}           # switch back to original tab  
    #Select Window    title:TITLE NAME

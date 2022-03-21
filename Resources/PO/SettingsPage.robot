*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Settings Loaded
    Sleep    5
    Wait Until Page Contains  Settings

Navigate to Create User
    Log    Click Account Settings
    Click Element  xpath=//div[@id='secondary']/ul[2]/div/div[2]/li[2]/h2/span[2]
    Log    Click Users, Roles
    Wait Until Page Contains Element  xpath=//li[2]/ul/ul/li[2]/a/span[2]
    Mouse Over  xpath=//li[2]/ul/ul/li[2]/a/span[2]
    Click Element  xpath=//li[2]/ul/ul/li[2]/a/span[2]
    #Go To    https://lo4h4a.uat.env.acquire.io/settings/users
    Log    Click Create User Button
    Wait Until Page Contains Element  xpath=//div[@id='setting-section-main-container']/div/div[2]/div/span/button/span
    Click Element  xpath=//div[@id='setting-section-main-container']/div/div[2]/div/span/button/span

Navigate to Create Department
    Log    Click Account Settings
    Click Element  xpath=//div[@id='secondary']/ul[2]/div/div[2]/li[2]/h2/span[2]
    Log  Departments
    Wait Until Page Contains Element  xpath=//li[2]/ul/ul/li[3]/a/span[2]
    Mouse Over  xpath=//li[2]/ul/ul/li[3]/a/span[2]
    Click Element  xpath=//li[2]/ul/ul/li[3]/a/span[2]
    #Go To    https://lo4h4a.uat.env.acquire.io/settings/departments
    Sleep    5
    Log    Button Add Department
    Click Element  xpath=//div[@id='setting-section-main-container']/div/div[2]/div/span/button/span
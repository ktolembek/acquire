*** Settings ***
Resource    Data/InputData.robot
Resource    PO/LogIn.robot
Resource    PO/DashboardPage.robot
Resource    PO/SettingsPage.robot
Resource    PO/AddUserPage.robot
Resource    PO/AddDepartmentPage.robot
Resource    PO/DashboardPage.robot
Resource    PO/ChatSimulatePage.robot

*** Variables ***
${BROWSER}  chrome
${URL}  about:blank
${SELSPEED}  0.0s

*** Keywords ***
LogIn
    LogIn.Verify Page Loaded
    LogIn.Enter Credentials

Dashboard Page
    DashboardPage.Verify Dashboard Loaded    

Settings Page
    DashboardPage.Navigate to Settings
    SettingsPage.Verify Settings Loaded

Add User Page
    [Arguments]  ${Details}
    SettingsPage.Navigate to Create User
    AddUserPage.Verify Add User Loaded
    AddUserPage.Fill Out User Details   ${Details}

Add Department Page
    [Arguments]  ${Department}
    SettingsPage.Navigate to Create Department
    AddDepartmentPage.Verify Add Department Loaded
    AddDepartmentPage.Fill Out Department Details  ${Department}

Chat Simulation
    ChatSimulatePage.Go to Chat Simulate Page
    DashboardPage.Accept Pending Chat Conversation

Test Multiple Cases with Different User Details
    [Arguments]  ${Details}
    LogIn
    Dashboard Page
    Settings Page
    Add User Page   ${Details}

Test Multiple Cases with Different Departments
    [Arguments]  ${Department}
    LogIn
    Dashboard Page
    Settings Page
    Add Department Page  ${Department}

Test Chat Features
    LogIn
    Dashboard Page
    Chat Simulation
    
    
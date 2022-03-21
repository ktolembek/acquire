*** Settings ***
Documentation  Scenario 1: Log into agent dashboard. Navigate to Settings -> Users and add a new user
Resource  ../Resources/Common.robot  # necessary for Setup & Teardown
Resource  ../Resources/AcquireApp.robot  # necessary for lower level keywords in test cases
Test Setup  Begin Web Test
Test Teardown  End Web Test

# Copy/paste the below line to Terminal window to execute all test cases
# robot -d results tests/scenario1.robot

#Copy/paste the below line to Terminal window to execute all test cases individually
#robot -d results -e smoke tests/scenario1.robot

#Copy/paste the below line to Terminal window to execute test cases in Firefox (Chrome by default)
#robot -d results -e smoke -v BROWSER:ff tests/scenario1.robot

#Copy/paste the below line to Terminal window to execute all test cases in one batch (data-driven example)
#robot -d results -i smoke tests/scenario1.robot

#Copy/paste the below line to Terminal window to execute a test case selected by tag (e.g. 'blank')
#robot -d results -i blank tests/scenario1.robot

*** Test Cases ***
Agent must sign in and add a new user
    [Tags]    smoke
    [Template]  Test Multiple Cases with Different User Details
    ${VALID_DETAILS}
    ${INVALID_NAME}
    ${INVALID_EMAIL}
    ${INVALID_PASSWORD}
    ${INVALID_ROLE} 
    ${BLANK_CREDENTIALS}

Add a new user with valid details
    [Tags]    valid
    Test Multiple Cases with Different User Details    ${VALID_DETAILS}

Add a new user with invalid name
    [Tags]    invalid_name
    Test Multiple Cases with Different User Details    ${INVALID_NAME}

Add a new user with invalid email
    [Tags]    invalid_email
    Test Multiple Cases with Different User Details    ${INVALID_EMAIL}

Add a new user with invalid password
    [Tags]    invalid_pass
    Test Multiple Cases with Different User Details    ${INVALID_PASSWORD}

Add a new user with invalid role
    [Tags]    invalid_role
    Test Multiple Cases with Different User Details    ${INVALID_ROLE}

Add a new user with blank details
    [Tags]    blank
    Test Multiple Cases with Different User Details    ${BLANK_CREDENTIALS}
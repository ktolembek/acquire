*** Settings ***
Documentation  Scenario 2: Log into agent dashboard. Navigate to Settings -> Departments and add a new department
Resource  ../Resources/Common.robot  # necessary for Setup & Teardown
Resource  ../Resources/AcquireApp.robot  # necessary for lower level keywords in test cases
Test Setup  Begin Web Test
Test Teardown  End Web Test

# Copy/paste the below line to Terminal window to execute all test cases
# robot -d results/scenario2 tests/scenario2.robot

*** Test Cases ***
Add a new department with valid name
    [Tags]    valid
    Test Multiple Cases with Different Departments  ${RANDOM_DEPARTMENT}

Add a new department with blank name
    [Tags]    blank_name
    Test Multiple Cases with Different Departments  ${BLANK_DEPARTMENT}

Add a new department with duplicate name
    [Tags]    duplicate_name
    Test Multiple Cases with Different Departments  ${DUPLICATE_DEPARTMENT}


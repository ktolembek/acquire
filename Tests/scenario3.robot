*** Settings ***
Documentation  Scenario 3: Log into agent dashboard. Interact with Chat Simulation widget
Resource  ../Resources/Common.robot  # necessary for Setup & Teardown
Resource  ../Resources/AcquireApp.robot  # necessary for lower level keywords in test cases
Test Setup  Begin Web Test
Test Teardown  End Web Test

# Copy/paste the below line to Terminal window to execute all test cases
# robot -d results/scenario3 tests/scenario3.robot

*** Test Cases ***
Interact with Chat Simulation widget
    [Tags]    chat
    Test Chat Features



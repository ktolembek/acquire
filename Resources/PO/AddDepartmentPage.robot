*** Settings ***
Library  SeleniumLibrary
Library  String

*** Variables ***


# Input Data
*** Keywords ***
Verify Add Department Loaded
    Sleep    5
    Wait Until Page Contains  Add Department

Fill Out Department Details
    [Arguments]  ${Department}
    Click Element  id=department-name1
    IF    '${Department.Name}' == 'Random'
        ${random_name} =    Generate Random String  30  [NUMBERS][LETTERS]
        Input Text     id=department-name1    Disney+${random_name}
    ELSE
        Input Text     id=department-name1    ${Department.Name} 
    END
    
    Click Element  xpath=//button[@id='save1']/span
    Wait Until Page Contains  ${Department.ExpectedErrorMessage}
    Page Should Contain  ${Department.ExpectedErrorMessage}
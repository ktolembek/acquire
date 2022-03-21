*** Settings ***
Library  SeleniumLibrary
Library  String

# Input Data
*** Keywords ***
Verify Add User Loaded
    Sleep    5
    Wait Until Page Contains  Add User

Fill Out User Details
    [Arguments]  ${Details}
    Input Text    id=name    ${Details.Name}
    IF    '${Details.Email}' == 'Random'
        ${random_number} =    Generate Random String  5  [NUMBERS]
        Input Text    id=email   tolembek+test${random_number}@gmail.com
    ELSE
        Input Text    id=email   ${Details.Email} 
    END
    Input Text    xpath=//div[@id='primary']/div[2]/div/div/div/div[2]/div/div[3]/div/div/div/input    United States
    Input Text    xpath=//div[@id='primary']/div[2]/div/div/div/div[2]/div/div[4]/div/div/div/input    California
    Input Text    id=password    ${Details.Password}
    Input Text    id=passwordRepeat    ${Details.Password}
    Log    phone number
    Input Text    xpath=//div[@id='primary']/div[2]/div/div/div/div[2]/div/div[7]/div/div/div/div/div/input    uni
    Click Element    xpath=(.//*[normalize-space(text()) and normalize-space(.)='United States Minor Outlying Islands (0)'])[1]/following::button[1]
    Input Text    name=officeNumber    6475550155
    IF    '${Details.Roles}' == 'Yes'
        Log    Roles
        Click Element    xpath=//div[@id='primary']/div[2]/div/div/div/div[2]/div/div[9]/div/div/div/i
        Wait Until Element Is Visible  xpath=(.//*[normalize-space(text()) and normalize-space(.)='Operator'])[1]/preceding::button[1]    10
        Click Element    xpath=(.//*[normalize-space(text()) and normalize-space(.)='Operator'])[1]/preceding::button[1]
        Click Element    xpath=(.//*[normalize-space(text()) and normalize-space(.)='Administrator'])[1]/following::button[1]
    END
    
    Log    Time Zone
    Click Element    xpath=//div[@id='primary']/div[2]/div/div/div/div[2]/div/div[11]/div/div/div/i
    Click Element    xpath=(.//*[normalize-space(text()) and normalize-space(.)='(UTC-05:00) Bogota, Lima, Quito'])[1]/following::span[1]
    Log    Submit
    Click Button    xpath=//button[@type='submit']
    Wait Until Page Contains  ${Details.ExpectedErrorMessage}
    Page Should Contain  ${Details.ExpectedErrorMessage}
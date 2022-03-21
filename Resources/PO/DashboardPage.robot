*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Dashboard Loaded
    Sleep    5
    Wait Until Page Contains Element  xpath=//*[@id="primary"]/div[1]/ul/li/span
    Wait Until Page Contains    Acquire Admin Dashboard
    

Navigate to Settings
    Sleep    5
    Click Element   xpath=//div[@id='secondary']/div/ul/div[2]/li/ul/li/a/span

Accept Pending Chat Conversation
    Sleep    5
    Click Element    xpath=//*/text()[normalize-space(.)='Accept']/parent::*
    Sleep    5
    Click Element    id=composer-modern-editor
    Input Text       id=composer-modern-editor    hey
    Click Element    xpath=//div[@id='action-composer-submit']/span
    Click Element    xpath=//div[@id='primary']/div[2]/div/div/div/div/div/div/button[7]/span
    Sleep    5
    Click Element    xpath=//button[@id='submit1']/span
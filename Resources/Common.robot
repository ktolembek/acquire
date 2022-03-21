*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Begin Web Test
    Open Browser  ${URL}  ${BROWSER}  options=add_argument("log-level=3"); add_argument("--disable-blink-features=AutomationControlled")   #; add_argument('--headless')  #; add_argument('--user-agent=Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36')  
    Set Selenium Speed  ${SELSPEED}
    Maximize Browser Window

End Web Test
    Close Browser


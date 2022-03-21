# Acquire
The automation scripts are done with Robot Framework which is based on Python and supports Reporting, Logging, BDD, and integration with Jenkins CI/CD out of the box.
More about Robot Framework here https://robotframework.org/

Python is required to run the scripts. Install Python version 3.6 or higher from https://www.python.org/downloads/ . During installation, ENABLE add to the PATH variable option

All required libraries could be installed with requirements.txt file by running
# pip install -r requirements.txt

OR through PIP manager:
# pip install robotframework
# pip install robotframework-seleniumlibrary

Selenium webdriver binaries are also required. Binaries for Chrome and Firefox: 
https://chromedriver.chromium.org/downloads
https://github.com/mozilla/geckodriver/releases
For all other browsers from https://www.selenium.dev/downloads/

POM pattern was used to follow DRY principles. Directory and file structure is following:


    [Resources]
      [Data]
        InputData.robot -- parametrization file (in future I can use csv, excel or json for storing parameters)
        
      [PO] -- page object categorization
        LogIn.robot -- login page
        DashboardPage.robot -- dashboard elements and keywords
        SettingsPage.robot -- settings elements and keywords
        AddUserPage.robot -- add user page elements and keywords
        AddDepartmentPage.robot -- add department elements and keywords
        ChatSimulatePage.robot -- chat elements and routines
        
      AcquireApp.robot -- necessary for lower level keywords in test cases
      Common.robot -- necessary for Setup & Teardown 
    
    [Results] -- results folder with nice html report and log files
    [Tests] -- test suites
        scenario1.robot
        scenario2.robot
        scenario3.robot
    requirements.txt

To run scripts 
robot tests/scriptname.robot

Useful parameters:

    -d path -- location of test outputs,
    -i tag -- include tag,
    -e tag -- exclude tag,
    -v BROWSER:browser -- browser type (chrome, ff, edge, ie, safari, etc.)

# Scenario 1

from root directory copy/paste the below line to Terminal window to execute all test cases
robot -d results/scenario1 tests/scenario1.robot

Copy/paste the below line to Terminal window to execute test cases in Firefox (Chrome by default)
robot -d results/scenario1 -e smoke -v BROWSER:ff tests/scenario1.robot

Copy/paste the below line to Terminal window to execute all test cases in one batch (data-driven example)
robot -d results/scenario1 -i smoke tests/scenario1.robot

Copy/paste the below line to Terminal window to execute a test case selected by tag (e.g. 'blank')
robot -d results/scenario1 -i blank tests/scenario1.robot

# Scenario 2
Copy/paste the below line to Terminal window to execute all test cases
robot -d results/scenario2 tests/scenario2.robot

# Scenario 3 
Copy/paste the below line to Terminal window to execute all test cases
robot -d results/scenario3 tests/scenario3.robot

# What could be improved:
* external parametrization file (in future I can use csv, excel or json for storing parameters)
* BDD style test cases

# Some operationalization thoughts
* Integrate with Jenkins. Groovy based pipeline that could use Ansible, Docker for paralel execution
* Sauce Lab integration


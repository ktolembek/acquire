
*** Variables ***
# Configuration
${BROWSER}  chrome
${URL}  about:blank
${SELSPEED}  0.0s

# Input Data for User Form
&{VALID_DETAILS}  Name=Mickey Mouse  Email=Random  Password=P@ssw0rd  Roles=Yes  ExpectedErrorMessage=Manage Users
&{INVALID_NAME}  Name=Bo  Email=Random  Password=P@ssw0rd  Roles=Yes  ExpectedErrorMessage=Name at least 3 characters long
&{INVALID_EMAIL}  Name=Boo  Email=flop@com  Password=P@ssw0rd  Roles=Yes  ExpectedErrorMessage=Please enter a valid email address
&{INVALID_PASSWORD}  Name=Boo  Email=Random  Password=TestPassword!  Roles=Yes  ExpectedErrorMessage=Password must contain at least 1 lower case,1 upper case,1 number & 1 special character.
&{INVALID_ROLE}  Name=Boo  Email=Random  Password=P@ssw0rd  Roles=No  ExpectedErrorMessage=Please assign any role
&{BLANK_CREDENTIALS}  Name=  Email=  Password=  Roles=No  ExpectedErrorMessage=Unfortunately, you can’t leave this blank.

# Input Data for Departments
&{RANDOM_DEPARTMENT}  Name=Random  ExpectedErrorMessage=Manage Departments
&{BLANK_DEPARTMENT}  Name=  ExpectedErrorMessage=Please enter a department name.
&{DUPLICATE_DEPARTMENT}  Name=Disney  ExpectedErrorMessage=already exists!


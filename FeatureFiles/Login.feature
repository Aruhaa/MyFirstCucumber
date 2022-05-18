Feature: Login Functionality Feature
@adminLogin
Scenario:
Validate Login test
Given navigates to orangehrm
When user logs in using Username as "Admin"
And password as "Qedge123!@#"
When user click login button
Then user should validate  url text
Then user close browser
@UserMultipleData
Scenario Outline: User Validation with multiple data

Given User Launch Url in Browser
When I Enter Username as "Admin"
And I Enter Password as"Qedge123!@#"
When I click login button
When I click Admin
When I click AddBtn
When I Select "<UserRole>" in user role
When I Enter "<EmployeeName>" in ename
When I Enter "<UserName>" in username 
When I Enter "<Password>" in password
When I Enter "<cpassword>" in cpassword
When I click on save button 
Then I validate Url
Then I close Browser
Examples:
|UserRole|EmployeeName|UserName|Password|cpassword|
|Admin|Aaditya lname|Akhilesh09|Testing_098765432tes|Testing_098765432tes|
|ESS|Anjali Temp|Akhilesh09|Testing_098765432tes|Testing_098765432tes|
|Admin|Ajay demo|Akhilesh09|Testing_098765432tes|Testing_098765432tes|
|ESS|Dravid Demo|Akhilesh09|Testing_098765432tes|Testing_098765432tes|
|ESS|Arun Kumar|Akhilesh09|Testing_098765432tes|Testing_098765432tes|



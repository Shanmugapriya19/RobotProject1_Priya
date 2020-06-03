*** Settings ***
Library    SeleniumLibrary    


Suite Setup    Log    I am inside the TestSuite Setup    
Suite Teardown    Log    I am inside the Teardown Setup    
Test Setup    Log    I am inside the Test Setup
Test Teardown    Log    I am inside the Test Teardown            

Default Tags    Regression
 
*** Test Cases ***
MyFirstTest
    [Tags]    Sanity
    Log    Welcome to Ducen 
    
MySecondTest
    [Tags]    Smoke
    Log    I am Priya Sharan    
    
MyThirdTest
    [Tags]    Functional
    Log    I am Working in Ducen
    
MyFourthTest
    Log    I like to work in Ducen
   
    
FirstSeleniumTest
    Open Browser   ${Url}    Chrome
    Set Browser Implicit Wait    5 
    Loginkey
    Sleep    4    
    Close Browser    
    Log    Test Completed
    Log    This test was executed by %{username} and %{os}

*** Variables ***
${Url}    https://d360.ducenit.com/DIA    
${Username}    101677
${Password}    Shan190296#


*** Keywords ***
Loginkey    
    Input Text      id=username    ${Username}            
    Input Password       id=pass    ${Password}      
    Click Button    Login   
    Click Image     https://d360.ducenit.com/DIA/IMG/EmployeeImages/101677.jpg      
    Log    Test Completed    

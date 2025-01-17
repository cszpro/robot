*** Settings ***
Library    SeleniumLibrary
Resource    ../resources/login_keywords.resource
Suite Setup    Open Browser    browser=chrome

*** Variables ***
${URL}    https://www.saucedemo.com/

*** Test Cases ***
Unsuccessful Login - No credentials
    I navigate to the login page    ${URL}
    I input no credentials
    I click on the login button
    I am able to see the expected error message for no credentials

Unsuccessful Login - No username
    I navigate to the login page    ${URL}
    I input only the password
    I click on the login button
    I am able to see the expected error message for no username


Unsuccessful Login - No password
    I navigate to the login page    ${URL}
    I input only the username
    I click on the login button
    I am able to see the expected error message for no password


Unsuccessful Login - Wrong credentials
    I navigate to the login page    ${URL}
    I input wrong credentials
    I click on the login button
    I am able to see the expected error message for wrong credentials


Successfull Login 
    I navigate to the login page    ${URL}
    I input correct credentials
    I click on the login button
    I am able to view the home page    

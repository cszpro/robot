*** Settings ***
Library    SeleniumLibrary
Variables    ../variables/variables.py


*** Keywords ***
I navigate to the login page
    Go To    ${URL_DATA["base_url"]}

I input correct credentials
    Wait Until Element Is Visible    id=user-name
    Input Text    id=user-name    ${LOGIN_DATA["correct_data"]["username"]} 
    Input Text    id=password    ${LOGIN_DATA["correct_data"]["password"]} 

I input wrong credentials
    Wait Until Element Is Visible    id=user-name
    Input Text    id=user-name    ${LOGIN_DATA["wrong_data"]["username"]} 
    Input Text    id=password    ${LOGIN_DATA["wrong_data"]["password"]} 
    
I click on the login button
    Click Button    id=login-button

I am able to view the home page
    ${location}    Get Location
    ${full_url}    Catenate    SEPARATOR=    ${URL_DATA["base_url"]}    ${URL_DATA["inventory_url"]}   
    Should Be Equal    ${location}    ${full_url}

I am able to see the expected error message for no credentials
    Wait Until Element Contains    class=error-message-container    ${ERROR_MESSAGES["no_credentials"]}

I am able to see the expected error message for no username
    Wait Until Element Contains    class=error-message-container    ${ERROR_MESSAGES["no_username"]}

I am able to see the expected error message for no password
    Wait Until Element Contains    class=error-message-container    ${ERROR_MESSAGES["no_password"]}

I am able to see the expected error message for wrong credentials
    Wait Until Element Contains    class=error-message-container    ${ERROR_MESSAGES["wrong_credentials"]}

I input only the username
    Wait Until Element Is Visible    id=user-name
    Input Text    id=user-name    ${LOGIN_DATA["correct_data"]["username"]} 

I input only the password
    Wait Until Element Is Visible    id=user-name
    Input Text    id=password    ${LOGIN_DATA["correct_data"]["password"]}

I input no credentials
    Wait Until Element Is Visible    id=user-name
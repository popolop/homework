*** Settings ***
Library         SeleniumLibrary
Resource        CommonKeywords.robot

*** Keywords ***
user login to n8n with ${username} and ${password}
    CommonKeywords.Wait until element is ready then input text        name=email            ${username}
    CommonKeywords.Wait until element is ready then input text        name=password         ${password}
    CommonKeywords.Wait until element is ready then click element     xpath=/html/body/div/div/div[1]/div[3]/div/div/div/div[2]/div/div[3]/button


n8n should display display validate login fail message as "${expected_message}"
    CommonKeywords.Wait until page contains element then verify text        ${expected_message}


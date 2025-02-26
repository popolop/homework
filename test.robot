*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}  https://app.futureskill.co/my-library
${BROWSER}  Chrome
${USERNAME}  padcenter@prachakij.com
${PASSWORD}  Padcenter11

*** Test Cases ***
Login Test
    Open Browser  ${URL}  ${BROWSER}
    Wait Until Element Is Visible  name:email  timeout=5s
    Input Text  name:email  ${USERNAME}
    Input Text  name:password  ${PASSWORD}
    Click Button  css=button[type='submit']
    Run Keyword And Ignore Error    Wait Until Element Is Visible    xpath=//button[contains(text(), 'ให้ภายหลัง')]    timeout=6s
    Run Keyword And Ignore Error    Click Button    xpath=//button[contains(text(), 'ให้ภายหลัง')]
    Wait Until Page Contains    สวัสดี บริษัท ศูนย์พัฒนาผู้นำ จำกัด    timeout=7s
    Capture Page Screenshot  login-success.png
    Close Browser


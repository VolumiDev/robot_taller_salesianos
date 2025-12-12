*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}        http://localhost:8080
${BROWSER}     chrome 

${username}                       Super Usuario Pepito            
${user_email}                      pepito@elemailparatodo.com            
${user_password}                   pepito 

*** Keywords ***
Abrir el navegador
    [Arguments]     ${url}    ${browser}
    Open Browser    ${url}    ${browser}    options=add_argument("--incognito")

Click Seguro Con Scroll
    [Documentation]    Espera a que el elemento sea visible, hace scroll hasta él y hace click.
    [Arguments]        ${localizador}    ${timeout}=10s
    
    Wait Until Page Contains Element    ${localizador}    ${timeout}
    Scroll Element Into View            ${localizador}
    Wait Until Element Is Visible       ${localizador}    ${timeout}
    Wait Until Element Is Enabled       ${localizador}    ${timeout}
    Click Element                       ${localizador}  
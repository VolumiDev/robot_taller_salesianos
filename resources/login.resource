*** Settings ***

Resource    general.resource

*** Variables ***
${link_registro}              xpath://a[contains(text(),'Regístrate aquí')]
${login_button}               xpath://button[contains(@class, 'bg-red-600')]
${login_input_email}          css:#email
${login_input_password}       css:#password


*** Keywords ***
Abrimos Navegador Y Vamos Al Link De Registro
    Abrir el navegador         ${URL}    ${BROWSER}
    Click Seguro Con Scroll    ${link_registro}

Hacer Login

    Wait Until Element Is Visible     ${login_input_email}       10
    Input Text                        ${login_input_email}       ${user_email}    
    
    Input Password                    ${login_input_password}    ${user_password}    
    
    Click Seguro Con Scroll           ${login_button}  
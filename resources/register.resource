*** Settings ***

Resource    general.resource


*** Variables ***
${reg_input_nombre_completo}      xpath:input[id=name]
${reg-input_email}                xpath:input[id=reg-email]
${reg-input_password}             xpath:input[id=reg-password]
${button_registrarme}             xpath://button[contains(normalize-space(.),Resgistrarme)]
        

*** Keywords ***
Hacer Registro
    Input Text                    ${reg_input_nombre_completo}      ${username}
    Input Text                    ${reg-input_email}                ${user_email}
    Input Password                ${reg-input_password}             ${user_password}
    Click Seguro Con Scroll       ${button_registrarme}
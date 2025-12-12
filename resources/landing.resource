*** Settings ***

Resource    general.resource

*** Variables ***
${button_logout}              xpath://button[contains(text(),'Logout')]
${button_entrar}              xpath://button[contains(@class, 'bg-red-600')]
${titulo}                     xpath://h1[contains(normalize-space(.), 'Dashboard de Personajes') ]


*** Keywords ***

Validar Que Estamos En El Dashboard
    Wait Until Element Is Visible    ${titulo}



Cerrar Sesion
  Click Seguro Con Scroll            ${button_logout}
  Wait Until Element Is Visible      ${button_entrar}
  Close Browser  
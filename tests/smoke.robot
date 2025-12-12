*** Settings ***
Documentation    Probamos el front de taller Salesianos
Resource    ../resources/general.resource
Resource    ../resources/login.resource
Resource    ../resources/register.resource
Resource    ../resources/landing.resource

   

*** Test Cases ***
Hacer Registro Y Login 
    Abrimos Navegador Y Vamos Al Link De Registro
    Hacer Registro
    Hacer Login
    Validar Que Estamos En El Dashboard
    Cerrar Sesion
    
*** Keywords ***


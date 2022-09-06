*** Settings ***
Documentation    Resources dos testes da página do TADS
Library          SeleniumLibrary

*** Variables ***
${BROWSER}    chrome
${LOGO_SIGA}    //a[@class="navbar-brand"]                                   
${USERNAME}    08364103946
${PASSWORD}    SenhaTemp1
${LOGIN_BTN}    //button[@type="submit"]  
${MENSAGEM_ERRO}    //div[@class="alert alert-danger"]  

*** Keywords ***
Abrir o Navegador
    Open Browser    browser=${BROWSER}
    Maximize Browser Window

Fechar o Navegador
    Close Browser

Acessar site do SIGA "${SITE_SIGA}"
    Go To    ${SITE_SIGA}
    Wait Until Element Is Visible    locator=${LOGO_SIGA}

Realiza login
    Input Text    name=login    ${USERNAME}  
    Input Password    name=password    ${PASSWORD}  
    Click Element    locator=${LOGIN_BTN}

Verificar se aparece na página perfil de acesso "${TEXTO}"


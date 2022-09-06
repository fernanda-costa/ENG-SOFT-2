*** Settings ***
Documentation    Resources dos testes da página do TADS
Library          SeleniumLibrary

*** Variables ***
${BROWSER}    chrome
${LOGO_SIGA}    //a[@class="navbar-brand"]                                   
${USERNAME}    08364103946
${PASSWORD}    SenhaTemp1
${LOGIN_BTN}    //button[@type="submit"]  
${MENSAGEM_ERRO}    //div[contains(text(),'Usuário e/ou senha inválidos!')]

*** Keywords ***
Abrir o Navegador
    Open Browser    browser=${BROWSER}
    Maximize Browser Window

Fechar o Navegador
    Close Browser

Acessar site do SIGA "${SITE_SIGA}"
    Go To    ${SITE_SIGA}
    Wait Until Element Is Visible    locator=${LOGO_SIGA}

Realizar login
    Input Text    name=login    ${USERNAME}  
    Input Password    name=password    ${PASSWORD}  
    Wait Until Element Is Visible    locator=${LOGIN_BTN}
    Clicar no Botão Acessar

Clicar no Botão Acessar
    Click Element    locator=${LOGIN_BTN}

Checar Mensagem de Erro
    Wait Until Element Is Visible    locator=${MENSAGEM_ERRO}                                  

Exibir/Esconder Dashboard

Verificar se aparece na página "${TEXTO}"
    Wait Until Element Is Visible    locator=//p[contains(.,'${TEXTO} (atendimento por email e Teams durante a suspensão do calendário acadêmico):')]                                   


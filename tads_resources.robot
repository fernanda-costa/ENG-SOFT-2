*** Settings ***
Documentation    Resources dos testes da página do TADS
Library          SeleniumLibrary

*** Variables ***
${BROWSER}    chrome
${LOGO_SIGA}    //*[@class="site-branding logo"]//img[@alt="SIGAUFPR"]                               
${MENU_COE}    //a[@role="menuitem"][contains(.,'COE (Estágio)')]
${LINK_ACESSAR}    //span[@class="login pl-2"][contains(.,'Acessar')]                                   
${USERNAME}    08364103946
${PASSWORD}    Fefa0890
${LOGIN_BTN}    //input[@class="menu-item menu-item-type-post_type menu-item-object-page buttonSubmit"]  
${MENSAGEM_ERRO}    //span[contains(text(),'Usuário ou senha inválidos!')]

*** Keywords ***
Abrir o Navegador
    Open Browser    browser=${BROWSER}
    Maximize Browser Window

# Fechar o Navegador
#     Close Browser

Acessar site do SIGA "${SITE_SIGA}"
    Go To    ${SITE_SIGA}
    Wait Until Element Is Visible    locator=${LOGO_SIGA}

Realizar Login
    Input Text    name=login    ${USERNAME}  
    Input Password    name=password    ${PASSWORD}  
    Wait Until Element Is Visible    locator=${LOGIN_BTN}
    Clicar no Botão Acessar

Clicar no Botão Acessar
    Click Element    locator=${LOGIN_BTN}

Checar Mensagem de Erro
    Wait Until Element Is Visible    locator=${MENSAGEM_ERRO}                                  

Verificar se aparece na página "${TEXTO}"
    Wait Until Element Is Visible    locator=//p[contains(.,'${TEXTO} (atendimento por email e Teams durante a suspensão do calendário acadêmico):')]                                   


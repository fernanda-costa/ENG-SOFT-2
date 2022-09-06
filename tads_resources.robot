*** Settings ***
Documentation    Resources dos testes da página do TADS
Library          SeleniumLibrary

*** Variables ***
${BROWSER}    chrome
${LOGO_SIGA}    //a[@class="navbar-brand"]                                   
${USERNAME}    08364103946
${PASSWORD}    SenhaTemp1
${LOGIN_BTN}    //button[@type="submit"]  
${LOGOUT_BTN}    //a[text()='Sair']  
${PORTAL_URL}    https://siga.ufpr.br/portal/  
${MENSAGEM_ERRO}    //div[contains(text(),'Usuário e/ou senha inválidos!')]
${URL_GRADUACAO}    https://www.prppg.ufpr.br/siga/selecionanivelacesso?comboAcesso=IXSEPX40001016111G0XSEPX49XSEPX6XSEPXXSEPX0XSEPX1
${ICONE_MENU}    //a[@class="sidebar-toggle"]

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

Verificar se aparece na página perfil de acesso "${NOME_PERFIL}"
    Element Should Be Visible    locator=//button[@class="btn btn-box-tool no-fa-icon"]//*[contains(b,"${NOME_PERFIL}")]

Realizar logout
    Click Element    locator=${LOGOUT_BTN}
    Location Should Be    url=${PORTAL_URL}

Ir para o perfil de acesso Graduação
    Go To    ${URL_GRADUACAO}
        
Clicar no Icone do Menu Sidebar
    Wait Until Element Is Visible    ${ICONE_MENU}
    Click Element    ${ICONE_MENU}
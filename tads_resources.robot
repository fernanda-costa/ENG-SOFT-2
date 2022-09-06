*** Settings ***
Documentation    Resources dos testes da página do TADS
Library          SeleniumLibrary

*** Variables ***
${BROWSER}    chrome
${TITULO_PAGINA}    //a[@class="navbar-brand d-none d-md-flex align-items-center m-0 mr-4 p-0 aabtn"][contains(.,'UFPR-TADS')]                                   
${MENU_COE}    //a[@role="menuitem"][contains(.,'COE (Estágio)')]
${LINK_ACESSAR}    //span[@class="login pl-2"][contains(.,'Acessar')]                                   
${USERNAME}    08364103946
${PASSWORD}    Fefa0890
${LOGIN_BTN}    //input[@class="menu-item menu-item-type-post_type menu-item-object-page buttonSubmit"]  
${MENSAGEM_ERRO}    //div[@class="alert alert-danger"]  

*** Keywords ***
Abrir o Navegador
    Open Browser    browser=${BROWSER}
    Maximize Browser Window

# Fechar o Navegador
#     Close Browser

Acessar site do TADS "${SITE_TADS}"
    Go To    ${SITE_TADS}
    # Wait Until Element Is Visible    locator=${TITULO_PAGINA}


Inserir no login
    Input Text    name=login    ${USERNAME}  
    Input Password    name=password    ${PASSWORD}  
    # Click Element    locator=${LOGIN_BTN}

checar mensagem de erro
    Wait Until Element Is Visible    locator=${MENSAGEM_ERRO}                                  


Verificar se aparece na página "${TEXTO}"
    Wait Until Element Is Visible    locator=//p[contains(.,'${TEXTO} (atendimento por email e Teams durante a suspensão do calendário acadêmico):')]                                   


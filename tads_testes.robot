*** Settings ***
Documentation    Esta suíte de testes verifica o site do TADS
Resource         tads_resources.robot
Test Setup       Abrir o Navegador
# Test Teardown    Fechar o Navegador

*** Variables ***
${URL}    https://siga.ufpr.br/portal/
${NOME_MENU}    COE(ace)



*** Test Cases ***

CASE DE TESTE : Fazer login
    [Documentation]    Fazer login no site SIGA
    [Tags]    login
    Acessar site do SIGA "${URL}"
    Realizar Login

CASE DE TESTE : Relizar login inválido
    [Documentation]    Acessa o menu de Estágios edo site do TADS
    [Tags]    login_invalido
    Acessar site do SIGA "${URL}"
    Clicar no Botão Acessar
    Checar Mensagem de Erro


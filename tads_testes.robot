*** Settings ***
Documentation    Esta suíte de testes verifica o site do TADS
Resource         tads_resources.robot
Variables        config.py
Test Setup       Abrir o Navegador
# Test Teardown    Fechar o Navegador

*** Variables ***
${URL}    https://siga.ufpr.br/portal/
${NOME_MENU}    COE(ace)



*** Test Cases ***

# CASE DE TESTE : 
#     [Documentation]    Acessa o menu de Estágios edo site do TADS
#     [Tags]    estagio
#     Acessar site do TADS "${URL}"
#     Clicar no menu "${NOME_MENU}"
#     Verificar se aparece na página "Membros do COE"


CADE DE TESTE : Fazer login
    [Documentation]    Fazer login
    [Tags]    estagio
    Acessar site do TADS "${URL}"
    Inserir no login
    # checar mensagem de erro

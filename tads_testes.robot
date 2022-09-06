*** Settings ***
Documentation    Esta suíte de testes verifica o site do SIGA
Resource         tads_resources.robot
Variables        config.py
Test Setup       Abrir o Navegador
# Test Teardown    Fechar o Navegador

*** Variables ***
${URL}    https://www.prppg.ufpr.br/siga/

*** Test Cases ***

CASE DE TESTE : Listar perfis de acesso
    [Documentation]    Verifica se os perfis de acesso são exibidos
    [Tags]    perfil de acesso
    Acessar site do SIGA "${URL}"
    Realiza login
    Verificar se aparece na página perfil de acesso

CASE DE TESTE : Realiza logout
    [Documentation]    Realiza logout
    [Tags]    logout
    Acessar site do SIGA "${URL}"
    Realiza login
    Realiza logout

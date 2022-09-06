*** Settings ***
Documentation    Esta suíte de testes verifica o site do SIGA
Resource         tads_resources.robot
Variables        config.py
Test Setup       Abrir o Navegador
# Test Teardown    Fechar o Navegador

*** Variables ***
${URL}    https://www.prppg.ufpr.br/siga/
${GRADUACAO_BTN}    Graduação

*** Test Cases ***

# CASE DE TESTE : 
#     [Documentation] Listar perfis de acesso
#     [Tags]    Perfil de acesso
#     Realiza login
#     Lista os perfis de acesso do usuario logado "${URL}"
#     Verifica se os perfis de acesso sao exibidos


CASE DE TESTE : Listar perfis de acesso
    [Documentation]    Verifica se os perfis de acesso são exibidos
    [Tags]    perfil de acesso
    Acessar site do SIGA "${URL}"
    Realiza login
    Verificar se aparece na página perfil de acesso "${GRADUACAO_BTN}"

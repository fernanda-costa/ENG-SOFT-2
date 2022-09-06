*** Settings ***
Documentation    Esta suíte de testes verifica o site do SIGA
Resource         siga_resources.robot
Test Setup       Abrir o Navegador
Test Teardown    Fechar o Navegador

*** Variables ***
${URL}    https://www.prppg.ufpr.br/siga/

*** Test Cases ***

CASE DE TESTE : Fazer login
    [Documentation]    Fazer login no site SIGA
    [Tags]    login
    Acessar site do SIGA "${URL}"
    Realizar Login

CASE DE TESTE : Listar perfis de acesso
    [Documentation]    Verifica se os perfis de acesso são exibidos
    [Tags]    perfil_acesso
    Acessar site do SIGA "${URL}"
    Realizar login
    Verificar se aparece na página perfil de acesso "CELIN"
    Verificar se aparece na página perfil de acesso "Graduação"
    Verificar se aparece na página perfil de acesso "SISPRO: Parcerias e Extensão"

CASE DE TESTE : Realizar logout
    [Documentation]    Realiza logout
    [Tags]    logout
    Acessar site do SIGA "${URL}"
    Realizar login
    Realizar logout

CASE DE TESTE: Exibir Sidebar
    [Documentation]    Clica no ícone do menu para exibir o sidebar
    [Tags]    sidebar
    Acessar site do SIGA "${URL}"
    Realizar login
    Ir para o perfil de acesso Graduação
    Clicar no Icone do Menu Sidebar
    Clicar no Icone do Menu Sidebar

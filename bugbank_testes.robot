*** Settings ***
Resource         bugbank_resources.robot
Test Setup       Abrir o navegador
#Test Teardown    Fechar o navegador

*** Test Cases ***

Caso de Teste 01 - Acesso ao site
    [Tags]    login

    Acessar a home page do site
    Fechar o navegador
    # Verificar o titulo da pagina
    # Verificar se aparece o botao

Caso de Teste 02 - Login
    [Tags]    login
    Acessar a home page do site
    preeche email
    preenche senha
    clica botao Acessar
    
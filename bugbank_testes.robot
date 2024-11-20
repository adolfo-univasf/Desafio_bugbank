*** Settings ***
Resource         bugbank_resources.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador

*** Test Cases ***

Caso de Teste 01 - Acesso ao site
    [Tags]    login

    Acessar a home page do site
    # Verificar o titulo da pagina
    # Verificar se aparece o botao
Caso de Teste 02 - Formato email invalido
    [Tags]    login

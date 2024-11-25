*** Settings ***

Resource         keywords.robot
Test Setup       Abrir o navegador
#Test Teardown    Fechar o navegador

*** Test Cases ***




Caso de Teste 01 - Login sem sucesso
    [Tags]    login_nok
    Acessar a home page do site
    preenche email
    preenche senha errada
    clica botao Acessar
    Verifica se aviso senha invalida aparece
    Screenshot
    Fechar o navegador



# os campos no firefox estão com bug em relação ao chrome, não consegui preencher ainda

# Caso de Teste 02 - Registrar
#     [Tags]    registrar
#     Acessar a home page do site
#     clica botao Registrar 
#     preenche email 
#     preenche nome



# Como o site não salva as credenciais o registro é necessario toda vez, 
Caso de Teste 03 - Login com sucesso 
    [Tags]    login_ok
    Acessar a home page do site
    preenche email
    preenche senha
    clica botao Acessar
    Verifica entrou na home
    Screenshot
    #Fechar o navegador




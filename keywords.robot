*** Settings ***
Library    SeleniumLibrary    screenshot_root_directory=screenshots/


*** Variables ***


${URL}                         https://bugbank.netlify.app/home
${LOGO_Bugbank}                //img[@src='/_next/image?url=%2F_next%2Fstatic%2Fmedia%2Fbugbank.ede6fc83.png&w=640&q=75']
${campo_Email}                 (//input[contains(@type,'email')])[1]
${campo_Senha}                 (//input[contains(@type,'password')])[1]
${campo_Nome}                  @FindBy(xpath = "//input[contains(@type,'name')]")
${botao_Acessar}               //button[@type='submit'][contains(.,'Acessar')]
${botao_Registrar}             //button[@type='button'][contains(.,'Registrar')]
${aviso_usuario_invalido}      //div[contains(@class,'styles__ContainerContent-sc-8zteav-1 cSdWPv')]
${Home_nome_user}              



${email}                    teste@hotmail.com
${senha}                    123456789Teste
${senha_errada}             senhaerrado
${nome}                     Adolfo


*** Keywords ***

Abrir o navegador
    Open Browser    browser=firefox

Fechar o navegador
    Close Browser

Acessar a home page do site
    Go To    url=${URL}
    Maximize Browser Window
    Wait Until Element Is Visible    locator=${LOGO_Bugbank}


preenche email
    Input Text    locator=${campo_Email}    text=${email}

preenche nome
    Input Text    locator=${campo_Nome}     text=${nome}


preenche senha
    Input Password    locator=${campo_Senha}    password=${senha}

preenche senha errada
    Input Password    locator=${campo_Senha}    password=${senha_errada}

clica botao Acessar
    Click Button    locator=${botao_Acessar}

clica botao Registrar
    Click Button    locator=${botao_Registrar}


Verifica se aviso senha invalida aparece
    Wait Until Element Is Enabled    locator=${aviso_usuario_invalido}



Verifica se realizou login
    Wait Until Element Is Enabled    locator=${Home_nome_user}
    


Screenshot
    Capture Page Screenshot
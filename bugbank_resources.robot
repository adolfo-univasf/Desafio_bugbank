*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${URL}             https://bugbank.netlify.app/home
${LOGO_Bugbank}    //img[@src='/_next/image?url=%2F_next%2Fstatic%2Fmedia%2Fbugbank.ede6fc83.png&w=640&q=75']
${campo_Email}    (//input[contains(@type,'email')])[1]
${campo_Senha}    (//input[contains(@type,'password')])[1]
${botao_Acessar}    //button[@type='submit'][contains(.,'Acessar')]

${email}    teste@hotmail.com
${senha}    123456789Teste


*** Keywords ***

Abrir o navegador
    Open Browser    browser=firefox

Fechar o navegador
    Close Browser

Acessar a home page do site
    Go To    url=${URL}
    Wait Until Element Is Visible    locator=${LOGO_Bugbank}


preeche email
    Input Text    locator=${campo_Email}    text=${email}

preenche senha
    Input Password    locator=${campo_Senha}    password=${senha}

clica botao Acessar
    Click Button    locator=${botao_Acessar}

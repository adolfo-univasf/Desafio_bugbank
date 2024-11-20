*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${URL}    https://bugbank.netlify.app/home


*** Keywords ***

Abrir o navegador
    Open Browser    browser=firefox
    Sleep    5s

Fechar o navegador
    Close Browser

Acessar a home page do site
    Go To    url=${URL}
*** Settings ***
Documentation   settings

Resource                  packege.robot

*** Keywords ***
Abrir Navegador
    Open Browser    about:blank     chrome

Fechar Navegador
    close Browser
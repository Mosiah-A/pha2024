*** Settings ***
Documentation       Exercício de Setup, Teardown e Alteração de Credenciais
Suite Setup         Setup Credenciais
Suite Teardown      Teardown Credenciais
Test Setup          Setup Teste
Test Teardown       Teardown Teste

*** Variables ***
&{CREDENCIAIS}       usuario=admin     senha=12345

*** Keywords ***
Setup Credenciais
    Log To Console    Preparando as credenciais de acesso.
    &{CREDENCIAIS} =    Create Dictionary    usuario=admin    senha=12345
    Set Suite Variable    &{CREDENCIAIS}

Teardown Credenciais
    Log To Console    Finalizando e restaurando as credenciais.
    Set Suite Variable    &{CREDENCIAIS}    usuario=admin    senha=12345

Setup Teste
    Log To Console    Iniciando o teste com credenciais: ${CREDENCIAIS}

Teardown Teste
    Log To Console    Finalizando o teste e restaurando a senha.
    Set Test Variable    &{CREDENCIAIS}    usuario=admin    senha=12345

Alterar Senha
    [Arguments]    ${nova_senha}
    Set Test Variable    &{CREDENCIAIS}    usuario=${CREDENCIAIS['usuario']}    senha=${nova_senha}
    Log To Console    Credenciais com senha alterada: ${CREDENCIAIS}

*** Test Cases ***
Testar Alteracao de Senha
    ${nova_senha}    Set Variable    nova_senha_987
    Alterar Senha    ${nova_senha}
    Log To Console    Credenciais após alteração da senha: ${CREDENCIAIS}

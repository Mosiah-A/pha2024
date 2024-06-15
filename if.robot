*** Settings ***
Documentation       Exercício de Argumentos e Retornos com Condição If
*** Variable ***

*** Keywords ***
Calcular Ano de Nascimento
    [Arguments]    ${idade}
    ${ano_atual}    Evaluate    2024    # Atualizar com o ano atual se necessário
    ${ano_nascimento}    Evaluate    ${ano_atual} - ${idade}
    [Return]    ${ano_nascimento}

Verificar Seculo
    [Arguments]    ${ano_nascimento}
    Run Keyword If    ${ano_nascimento} < 2000    
    Log To Console    Nasceu no século passado (${ano_nascimento})

*** Test Cases ***
Testar Ano de Nascimento
    ${idade}    Set Variable    30
    ${ano_nascimento}    Calcular Ano de Nascimento    ${idade}
    Log To Console    Ano de nascimento: ${ano_nascimento}
    Verificar Seculo    ${ano_nascimento}

Testar Ano de Nascimento Seculo Atual
    ${idade}    Set Variable    20
    ${ano_nascimento}    Calcular Ano de Nascimento    ${idade}
    Log To Console    Ano de nascimento: ${ano_nascimento}
    Verificar Seculo    ${ano_nascimento}

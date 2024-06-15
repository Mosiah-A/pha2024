*** Settings ***
Documentation       Exercício For in Range

*** Variables ***
${INICIO}           0
${FIM}              11

*** Keywords ***
Contar Numeros Pares
    [Arguments]    ${inicio}    ${fim}
    ${contador}    Set Variable    0
    FOR    ${i}    IN RANGE    ${inicio}    ${fim}
        Run Keyword If    ${i} % 2 == 0    Set Variable    ${contador}    ${contador} + 1
    END
    RETURN    ${contador}

*** Test Cases ***
Testar Contagem de Pares
    ${quantidade_pares}    Contar Numeros Pares    ${INICIO}    ${FIM}
    Log To Console    Quantidade de números pares entre ${INICIO} e ${FIM}: ${quantidade_pares}

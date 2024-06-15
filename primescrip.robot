*** Settings ***
Documentation    Aqui estarão todos os testes de variavel
#Resource    resource/main.robot

*** Variables ***
${PAIS}    Brasil
@{TOP3FILMES}    
...    LOR
...    HOBBIT
...    TWD

&{PRODUTO}
...    nome=iphone
...    marca=Apple
...    preço=10000

*** Keywords ***

IMPRIMIR NUMEROS 5 E 8 DE UM RANGE DE 10
    FOR    ${contador}    IN RANGE    0    11
        IF    ${contador} == 5
            Log To Console    Estou no Número ${contador}
        ELSE IF    ${contador} == 8
            Log To Console    Estou no Número ${contador}
        END
    END

IMPRIMIR NUMEROS 5 E 8 DE UM RANGE DE 10 COM WHILE
    ${numero}=    Set Variable    0
    WHILE    ${numero} <= 10
        IF    ${numero} == 5 or ${numero} == 8
            Log To Console    Estou no Número ${numero}
        END
        ${numero}=    Evaluate    ${numero} + 1
    END

Somar dois números "${NUM_A}" e "${NUM_B}"
    #[Arguments]     ${NUM_A}    ${NUM_B}
    ${SOMA}     Evaluate    ${NUM_A}+${NUM_B}
    [RETURN]    ${SOMA}


Criar meu e-mail
    [Arguments]     ${NOME}     ${SOBRENOME}    ${IDADE}
        ${EMAIL}    Catenate   SEPARATOR=_      ${NOME}  ${SOBRENOME}    ${IDADE}@robot.com
        
        Log To Console  ${EMAIL}
        Log     ${EMAIL}

    
*** Test Cases ***
Cenario 1: Imprimir Variaveis no Console    
    Log To Console    Meu Pais se chama ${PAIS}
    Log To Console    Top 1 filme da minha vida ${TOP3FILMES[0]}
    Log To Console    Produto se chama ${produto.nome}
    Log To Console    Marca se chama ${produto.marca}
    Log To Console    Preço: ${produto.preço}

Meu teste de Somar  
    ${RESULTADO}    Somar dois números "1" e "2"
    log     ${RESULTADO}

Cenario 2: Criação de Email
    [Tags]  Email
    ${EMAIL}    Criar meu e-mail    Fabiano     Oliveira    41

Cenario 6: Imprimir numeros
    [Tags]    NUM
    IMPRIMIR NUMEROS 5 E 8 DE UM RANGE DE 10

Cenario 7: Imprimir com while
    [Tags]    NUM
    IMPRIMIR NUMEROS 5 E 8 DE UM RANGE DE 10 COM WHILE

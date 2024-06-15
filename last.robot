*** Settings ***
Documentation       Exercícios Combinados
Resource            ./resources.robot

*** Test Cases ***
Executar Todos os Exercícios
    Exibir Informacoes Cliente
    Exibir Frutas
    Contar Numeros Pares
    Testar Alteracao de Senha

*** Keywords ***
Exibir Informacoes Cliente
    Log To Console    Dados do Cliente:
    Log To Console    Nome: ${CLIENTE01['nome']}
    Log To Console    Idade: ${CLIENTE01['idade']}
    Log To Console    Rua: ${CLIENTE01['rua']}
    Log To Console    Número: ${CLIENTE01['numero']}
    Log To Console    CEP: ${CLIENTE01['cep']}
    Log To Console    Bairro: ${CLIENTE01['bairro']}
    Log To Console    Cidade: ${CLIENTE01['cidade']}
    Log To Console    Estado: ${CLIENTE01['estado']}

Exibir Frutas
    Log To Console    Lista de Frutas:
    FOR    ${fruta}    IN    @{FRUTAS}
        Log To Console    ${fruta}
    END

Contar Numeros Pares
    Log To Console    Contando números pares entre 0 e 10:
    ${contador}    Set Variable    0
    FOR    ${i}    IN RANGE    0    10
        Run Keyword If    ${i} % 2 == 0    Set Variable    ${contador}    ${contador} + 1
    END
    Log To Console    Quantidade de números pares: ${contador}

Testar Alteracao de Senha
    ${nova_senha}    Set Variable    nova_senha_987
    Log To Console    Alterando senha para: ${nova_senha}
    Set Test Variable    &{CREDENCIAIS}    senha=${nova_senha}
    Log To Console    Credenciais após alteração da senha: ${CREDENCIAIS}

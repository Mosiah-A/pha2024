*** Settings ***
Documentation       Exercise

*** Variables ***
&{CLIENTE01}    
...    nome=jose
...    idade=22
...    rua=5
...    numero=23
...    cep=53402105
...    bairro=Sitio fragoso
...    cidade=paulista
...    estado=PE

*** Keywords ***
Imprimir Cliente
    [Arguments]    &{cliente}
    Log To Console    ${cliente['nome']}
    Log To Console    ${cliente['idade']}
    Log To Console    ${cliente['rua']}
    Log To Console    ${cliente['numero']}
    Log To Console    ${cliente['cep']}
    Log To Console    ${cliente['bairro']}
    Log To Console    ${cliente['cidade']}
    Log To Console    ${cliente['estado']}
    

*** Test Cases ***
Imprimir Cliente
    Imprimir Cliente    &{CLIENTE01}
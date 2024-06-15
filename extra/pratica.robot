*** Settings ***
Library     SeleniumLibrary
Library     DebugLibrary

*** Test Cases ***
Caso de teste 01: Abrir navegador
    Abrir navegador
    Pesquisar produto "BLOUSE"
    Verificar que o produto "BLOUSE" é listado nos resultados
    Fechar navegador

*** Variables ***
${ITEM}     BLOUSE
${variavel2}     2
${variavel3}     3



*** Keywords ***
Abrir navegador
    Open Browser    http://www.automationpractice.pl/index.php     chrome   

Pesquisar produto "${ITEM}"
    #debug
    Input Text      id=search_query_top    ${ITEM}
    click element   class=btn.btn-default.button-search

Verificar que o produto "BLOUSE" é listado nos resultados
    Element Text Should Be      xpath=/html/body/div/div[2]/div/div[3]/div[2]/h1/span[1]     "${ITEM}"  

Fechar navegador
    Close Browser
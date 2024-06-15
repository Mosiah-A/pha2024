*** Settings ***
Documentation   Aqui estarão todos os testes relacionados

Resource                  ../../src/config/packege.robot

Test Setup  Abrir Navegador
Test Teardown   Fechar Navegador


*** Test Cases ***
Cenario 01: Logar com sucesso
    [Tags]      Logar
    Entrar na pagina

Cenario 02: Adicionar 1 produto no carrinho pela tela de detalhe
    [Tags]  Carrinho
    Entrar na pagina
    Clicar no nome do produto
    clicar no botão Add to cart
    Validar se o produto está na tela do Carrinho  

Cenario 03: Acessar o About da Menu lateral com sucesso
    [Tags]      About
    Entrar na pagina
    Clicar no ícone do Menu
    Clicar na opção About
    Validar se abre a tela Soucelabs com sucesso


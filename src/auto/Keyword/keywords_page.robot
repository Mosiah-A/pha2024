*** Settings ***
Documentation       Keywords

Resource                  ../../config/packege.robot

*** Keywords ***

Entrar na pagina
    Acessar a pagina home site Sauce Demo
    Digitar o login
    Clicar no botão Logar 
    Verificar se logou com sucesso


Acessar a pagina home site Sauce Demo
    Go to    ${URL}
    Maximize Browser Window


Digitar o login
    Wait Until Page Contains Element   ${LOGIN}       10s
    Input Text      ${USER}      standard_user
    Input Text      ${PASSWORD}       secret_sauce

Clicar no botão Logar
    Click Element       ${LOGINBUTTON}

Verificar se logou com sucesso
    Wait Until Element Is Visible       ${PRODUCTTEXT}     10s
    


Clicar no nome do produto
    Wait Until Element Is Visible       ${PRODUCT4}     10s
    Click Element   ${PRODUCT4}

Clicar no botão Add to cart
    Wait Until Element Is Visible       xpath=//*[text()='Sauce Labs Backpack']
    Click Element                       ${ADDCARTB}
    Element Should Be Visible   xpath=//*[@id='remove'] 

Validar se o produto está na tela do Carrinho  
    Click Element               ${CARTICON}
    Element Should Be Visible   ${PRODUCT4}

Clicar no ícone do Menu
    Wait Until Element Is Visible       ${MENUB}    10s
    Click Element                       ${MENUB}

Clicar na opção About
    Wait Until Element Is Visible       ${SIDEBAR}      10s
    Click Element                       ${SIDEBAR}

Validar se abre a tela Soucelabs com sucesso 
    Element Should Be Visible   xpath=//p[text()='The world relies on your code. Test on thousands of different device, browser, and OS configurations–anywhere, any time.']




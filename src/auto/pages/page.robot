*** Settings ***
Documentation       variable

*** Variables ***
${URL}              https://www.saucedemo.com/
${LOGIN}            xpath=//div[@class='login_logo']
${USER}             xpath=//input[@id='user-name']
${PASSWORD}         xpath=//input[@id='password']
${LOGINBUTTON}      xpath=//input[@id='login-button']
${PRODUCTTEXT}      xpath=//span[text()='Products']
${PRODUCT4}         xpath=//a[@id='item_4_title_link']
${ADDCARTB}         xpath=//button[@id='add-to-cart']
${CARTICON}         xpath=//*[@class='shopping_cart_link']
${MENUB}            xpath=//*[@id='react-burger-menu-btn']
${SIDEBAR}          xpath=//*[@id='about_sidebar_link']

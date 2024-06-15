*** Settings ***
Documentation   settings

Library    SeleniumLibrary
Library     DebugLibrary

##      Keyword     ##

Resource                  ../auto/Keyword/keywords_page.robot

##      Pages       ##
Resource                  ../auto/pages/page.robot

##      hooks       ##
Resource                  hooks.robot
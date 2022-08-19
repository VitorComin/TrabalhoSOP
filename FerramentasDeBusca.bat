@echo off
echo MENU
echo Digite "google" para abrir o google
echo Digite "bing" para abrir o bing
echo Digite "yahoo" para abrir o yahoo
echo Digite --help para ajuda
:start
set /p comando=Digite um comando:
if %comando% == --version (goto :opcao1) else (goto :opcao2)
:opcao1
echo Versao 1.8
goto :fim
:opcao2
if %comando% == --help (goto :opcao3) else (goto :opcao4)
:opcao3
echo --version - consultar a versao
echo --help - menu de comandos
echo google - abrir o google
echo yahoo - abrir o yahoo
echo bing - abrir o bing
goto :fim
:opcao4
if %comando% == google (goto :opcao5) else (goto :opcao6)
:opcao5
start https://www.google.com
goto :fim
:opcao6
if %comando% == bing (goto :opcao7) else (goto :opcao8)
:opcao7
start https://www.bing.com/?cc=br
goto :fim
:opcao8
if %comando% == yahoo (goto :opcao9) else (goto :opcao10)
:opcao9
start https://br.yahoo.com/
goto :fim
:opcao10
echo Comando inválido
goto :fim
:fim
goto :start

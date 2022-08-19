@echo off
cls
:menu

date /t

echo Computador: %computername%        Usuario: %username%
                   
echo          OPCOES 
echo  1. Esvaziar a Lixeira             
echo  2. Abrir calculadora             
echo  3. Desfragmentar o disco          
echo  4. Version 
echo  5. README          
echo  6. Sair                          

set /p opcao= Escolha uma opcao: 

if %opcao% equ 1 goto opcao1
if %opcao% equ 2 goto opcao2
if %opcao% equ 3 goto opcao3
if %opcao% equ 4 goto opcao4
if %opcao% equ 5 goto opcao5
if %opcao% GEQ 6 goto opcao6

:opcao1
cls
rd /S /Q c:\$Recycle.bin
echo ==================================
echo *      Lixeira Esvaziada          
echo ==================================
pause
goto menu

:opcao2
cls
cd C:\Windows\System32 
start calc.exe
echo ==================================
echo *      Calculadora aberta           
echo ==================================
pause
goto menu

:opcao3
cls
cd C:\Windows\System32 
start dfrgui.exe
echo ==================================
echo     Desfragmentador de disco       
echo ==================================
pause
goto menu

:opcao4
cls
echo version 1.0
echo creator Camilla
pause
goto menu

:opcao5
echo Programa que executa ações sobre o sistema operacional > README.txt
echo Para utilizar os comandos disponíveis, insira o número correspondente no menu. >> README.txt
echo 1.Esvazia a lixeira. >> README.txt
echo 2.Abre o aplicativo da calculadora. >> README.txt
echo 3.Abre o desgragmentador de disco. >> README.txt	
echo 4.Abre o navegador Edge. >> README.txt
echo 5.Instruções. >> README.txt
echo 6.Sair da aplicação. >> README.txt
echo Obrigada por utilizar o programa!! >> README.txt
start README.txt
cls
exit

:opcao 6
cls
exit

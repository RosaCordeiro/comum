@echo off
chcp 1252
:getConfirmation
cls

echo Sistemas Habilitados:
echo    CR - Contas a Receber
echo    EX - Exportacao
echo    RO - Retaguarda Operacional
echo.
set /p cod=Informe o codigo do sistema: 

if "%cod%"=="EX" goto :EX
if "%cod%"=="CR" goto :CR
if "%cod%"=="RO" goto :RO
goto :NE
 
:NE
  cls
  echo Sistema nao encontrado!!!
  pause
goto end

:EX
  cls
  echo Copiando PDBs Comum...
  move S:\Sistemas_PB12\Exportacao\Bibliotecas\*.pbd S:\Sistemas_PB12\Exportacao\exe

  echo.

  echo Copiando PDBs Exportacao...
  move S:\sistemas_pb12\Comuns\Bibliotecas\*.pbd s:\sistemas_pb12\Exportacao\exe

  echo Movendo PDBs para o S\...
  start F:\App\Sistemas_12_PBD.ffs_batch
goto end

:CR
  cls
  echo Copiando PDBs Contas a Receber...
  move S:\Sistemas_PB12\Contas_Receber\Bibliotecas\*.pbd S:\Sistemas_PB12\Contas_Receber\exe

  echo.

  echo Copiando PDBs Comuns...
  move S:\sistemas_pb12\Comuns\Bibliotecas\*.pbd s:\sistemas_pb12\Contas_Receber\exe
  move S:\sistemas_pb12\Comuns\Bibliotecas\PFC\*.pbd s:\sistemas_pb12\Contas_Receber\exe

  echo Movendo PDBs para o S\...
  start F:\App\Sistemas_12_PBD.ffs_batch
goto end

:RO
  echo Copiando PDBs Retaguarda Operacional...
  move S:\Sistemas_PB12\Retaguarda_Operacional\Bibliotecas\*.pbd S:\Sistemas_PB12\Retaguarda_Operacional\exe

  echo.

  echo Copiando PDBs Comuns...
  move S:\sistemas_pb12\Comuns\Bibliotecas\*.pbd s:\sistemas_pb12\Retaguarda_Operacional\exe

  echo Movendo PDBs para o S\...
  start F:\App\Sistemas_12_PBD.ffs_batch
goto end

    

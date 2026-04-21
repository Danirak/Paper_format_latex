@echo off
chcp 65001 >nul
setlocal

echo ==================================
echo Compilador LaTeX Automatico
echo ==================================
echo.

REM Configurar archivo
set ARCHIVO=informe_laboratorio

echo [1/4] Cerrando PDF si esta abierto...
echo.

REM Cerrar Adobe Reader
taskkill /IM AcroRd32.exe /F >nul 2>&1
taskkill /IM Acrobat.exe /F >nul 2>&1

REM Cerrar SumatraPDF
taskkill /IM SumatraPDF.exe /F >nul 2>&1

REM Esperar un momento
timeout /t 1 /nobreak >nul

echo [2/4] Limpiando archivos auxiliares...
del /Q %ARCHIVO%.aux 2>nul
del /Q %ARCHIVO%.log 2>nul
del /Q %ARCHIVO%.out 2>nul
echo.

echo [3/4] Compilando con pdfLaTeX...
echo.

pdflatex -interaction=nonstopmode %ARCHIVO%.tex

if %ERRORLEVEL% EQU 0 (
    echo.
    echo [4/4] Compilacion exitosa!
    echo.
    echo ==================================
    echo Abriendo PDF...
    echo ==================================
    start %ARCHIVO%.pdf
) else (
    echo.
    echo Error en la compilacion.
    echo.
    echo Revisa los mensajes de error arriba o el archivo %ARCHIVO%.log
)

echo.
pause

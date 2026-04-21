# Script de compilacion de LaTeX
# Cierra automaticamente el PDF, compila el documento y lo abre

# Actualizar PATH para incluir MiKTeX
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")

$pdfFile = "informe_laboratorio.pdf"

# Cerrar cualquier proceso que tenga abierto el PDF
Write-Host "Cerrando procesos que puedan tener abierto el PDF..." -ForegroundColor Yellow
Get-Process | Where-Object { $_.MainWindowTitle -like "*$pdfFile*" } | ForEach-Object {
    Write-Host "  Cerrando: $($_.ProcessName)" -ForegroundColor Cyan
    $_.CloseMainWindow() | Out-Null
    Start-Sleep -Milliseconds 500
    if (!$_.HasExited) {
        Stop-Process -Id $_.Id -Force
    }
}

# Pequena pausa para asegurar que el archivo se libere
Start-Sleep -Milliseconds 200

# Compilar el documento
Write-Host "`nCompilando documento LaTeX..." -ForegroundColor Green
pdflatex -interaction=nonstopmode informe_laboratorio.tex

# Verificar si el PDF fue generado exitosamente
if (Test-Path $pdfFile) {
    Write-Host "`nCompilacion exitosa!" -ForegroundColor Green
    Write-Host "PDF generado: $pdfFile" -ForegroundColor Cyan
    
    # Abrir el PDF automaticamente
    Write-Host "`nAbriendo PDF..." -ForegroundColor Green
    Start-Process $pdfFile
} else {
    Write-Host "`nError en la compilacion. El PDF no fue generado." -ForegroundColor Red
    Write-Host "Revisa el archivo .log para mas detalles" -ForegroundColor Yellow
}

# Instrucciones rápidas para actualizar screenshots

## Paso 1: Generar capturas
1. Abre `informe_laboratorio.pdf`
2. Presiona `Win + Shift + S` (Windows) o usa tu herramienta de captura
3. Captura cada página individualmente
4. Guarda las imágenes en esta carpeta como:
   - page1.png
   - page2.png
   - page3.png
   - page4.png
   - page5.png (opcional)

## Paso 2: Subir al repositorio
```bash
git add screenshots/
git commit -m "Add PDF preview screenshots"
git push origin main
```

## Recomendaciones
- Usa resolución alta (300 DPI mínimo)
- Formato PNG para mejor calidad
- Tamaño recomendado: ~800-1000px de ancho
- Comprime las imágenes si son muy pesadas (usa TinyPNG.com)

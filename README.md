# Plantilla LaTeX para Informes de Laboratorio Académicos

Plantilla profesional en LaTeX para informes de laboratorio universitarios con formato tipo paper científico. Diseñada para trabajos académicos en español con estilo sobrio y clásico.

## Características

- **Formato tipo paper académico** con dos columnas
- **Tipografía Times New Roman** (aproximación con newtxtext/newtxmath para pdfLaTeX)
- **Idioma**: Español (configurado con babel)
- **Tamaño**: Letter (11pt)
- **Encabezados y pies de página** personalizados con líneas
- **Tablas y gráficos** con formato consistente y profesional
- **Numeración de secciones** en números romanos (I, II, III...)
- **Captions centrados en cursiva** con punto después del número
- **Compilación rápida** mediante scripts incluidos

## Vista Previa

<table>
  <tr>
    <td><img src="https://github.com/user-attachments/assets/fd373039-8ad5-4437-bc07-328107120319" alt="Página 1" width="400"/></td>
    <td><img src="https://github.com/user-attachments/assets/0892940b-9e5a-407a-a4bb-dc35af4d84b5" alt="Página 2" width="400"/></td>
  </tr>
  <tr>
    <td><img src="https://github.com/user-attachments/assets/10bd007b-cfff-4a8b-b94d-5c7fafcbd0e8" alt="Página 3" width="400"/></td>
    <td><img src="https://github.com/user-attachments/assets/10bd007b-cfff-4a8b-b94d-5c7fafcbd0e8" alt="Página 4" width="400"/></td>
  </tr>
  <tr>
    <td><img src="https://github.com/user-attachments/assets/6856d713-4cc7-45e8-b543-9a2211370ebf" alt="Página 5" width="400"/></td>
    <td><img src="https://github.com/user-attachments/assets/482fb333-df4e-4f32-b655-29effa94ddb7" alt="Página 6" width="400"/></td>
  </tr>
</table>

*Ejemplo de informe generado: "Determinación experimental de la aceleración de gravedad mediante caída libre"*

## Uso Rápido

### Opción 1: Usar como plantilla en GitHub

1. Haz clic en **"Use this template"** en GitHub
2. Clona tu nuevo repositorio
3. Edita `informe_laboratorio.tex` con tu contenido
4. Compila el documento

### Opción 2: Clonar directamente

```bash
git clone https://github.com/TU_USUARIO/Paper_format_latex.git
cd Paper_format_latex
```

## Requisitos

- **LaTeX Distribution**: MiKTeX, TeX Live, o MacTeX
- **Compilador**: pdfLaTeX
- **Paquetes necesarios** (se instalan automáticamente con MiKTeX):
  - babel (spanish)
  - newtxtext, newtxmath
  - geometry
  - fancyhdr
  - multicol
  - graphicx
  - float
  - caption
  - booktabs
  - amsmath, amssymb
  - setspace
  - titlesec
  - enumitem

## Compilación

### Windows

**PowerShell:**
```powershell
.\compile.ps1
```

**Command Prompt:**
```cmd
compilar.bat
```

**Manual:**
```cmd
pdflatex informe_laboratorio.tex
```

### Linux/Mac

```bash
pdflatex informe_laboratorio.tex
```

## Reglas de Formato

La plantilla sigue estas convenciones académicas:

### Captions
- **Posición**: Debajo de figuras y tablas
- **Formato**: Centrado, cursiva, tamaño pequeño
- **Estilo**: "Tabla 1. Descripción..." (con punto después del número)

### Secciones
- **Nivel 1**: Números romanos mayúsculos (I, II, III...)
- **Nivel 2**: Formato I.1, I.2, etc.
- **Nivel 3**: Formato I.1.1, I.1.2, etc.

### Columnas
- **Bloque inicial**: Una columna (título, autores, resumen)
- **Cuerpo**: Dos columnas
- **Referencias**: Una columna (opcional)

## 📝 Estructura del Documento

```latex
% Bloque inicial (1 columna)
- Título
- Autores
- Afiliación
- Resumen

% Cuerpo (2 columnas)
I. Introducción
II. Montaje Experimental
III. Resultados
IV. Análisis de Resultados
V. Análisis de Errores
VI. Conclusiones

% Referencias (1 columna)
```

## 🔧 Solución de Problemas

### Error: "! LaTeX Error: Command `\Bbbk' already defined"

Este es un warning conocido entre `newtxmath` y `amssymb`. No afecta la compilación y se puede ignorar.

### Las tablas no caben en las columnas

- Reduce el tamaño de fuente: `\footnotesize` o `\scriptsize`
- Abrevia los encabezados de columna
- Considera dividir la tabla en dos partes

### Espaciado irregular entre columnas

LaTeX balancea las columnas automáticamente con `multicol`. Si es necesario forzar un salto:

```latex
\columnbreak
```

## 🤝 Contribuciones

Las contribuciones son bienvenidas. Si encuentras algún problema o tienes sugerencias:

1. Abre un **Issue** describiendo el problema o mejora
2. Haz un **Fork** del proyecto
3. Crea una **Pull Request** con tus cambios

## ✨ Ejemplo

El archivo `informe_laboratorio.tex` incluye un ejemplo completo de un informe de laboratorio de física sobre determinación de la aceleración de gravedad mediante caída libre, que demuestra todas las características de la plantilla.

---

**¿Te resultó útil esta plantilla?** ¡Dale una ⭐ en GitHub!

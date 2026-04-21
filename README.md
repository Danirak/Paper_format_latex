# Plantilla LaTeX para Informes de Laboratorio Académicos

Plantilla profesional en LaTeX para informes de laboratorio universitarios con formato tipo paper científico. Diseñada para trabajos académicos en español con estilo sobrio y clásico.
<img width="488" height="631" alt="image" src="https://github.com/user-attachments/assets/fd373039-8ad5-4437-bc07-328107120319" />
<img width="487" height="629" alt="image" src="https://github.com/user-attachments/assets/0892940b-9e5a-407a-a4bb-dc35af4d84b5" />
<img width="489" height="617" alt="image" src="https://github.com/user-attachments/assets/10bd007b-cfff-4a8b-b94d-5c7fafcbd0e8" />
<img width="488" height="633" alt="image" src="https://github.com/user-attachments/assets/6856d713-4cc7-45e8-b543-9a2211370ebf" />
<img width="487" height="635" alt="image" src="https://github.com/user-attachments/assets/482fb333-df4e-4f32-b655-29effa94ddb7" />

## 📋 Características

- **Formato tipo paper académico** con dos columnas
- **Tipografía Times New Roman** (aproximación con newtxtext/newtxmath para pdfLaTeX)
- **Idioma**: Español (configurado con babel)
- **Tamaño**: Letter (11pt)
- **Encabezados y pies de página** personalizados con líneas
- **Tablas y gráficos** con formato consistente y profesional
- **Numeración de secciones** en números romanos (I, II, III...)
- **Captions centrados en cursiva** con punto después del número
- **Compilación rápida** mediante scripts incluidos

## 📁 Estructura del Proyecto

```
Paper_format_latex/
├── informe_laboratorio.tex    # Documento principal
├── compile.ps1                 # Script de compilación PowerShell
├── compilar.bat               # Script de compilación Batch
├── docs/
│   └── graficos/              # Directorio para imágenes
│       ├── Grafico_1.png
│       ├── Grafico_2.png
│       └── Grafico_3.png
└── README.md                  # Este archivo
```

## 🚀 Uso Rápido

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

## 📦 Requisitos

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

## ⚙️ Compilación

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

## 🎨 Personalización

### Cambiar el título y autores

Edita las líneas 173-186 en `informe_laboratorio.tex`:

```latex
{\fontsize{14}{16}\selectfont\bfseries 
Título de tu trabajo}

{\normalsize
Nombre Autor 1, Nombre Autor 2,\\
Nombre Autor 3}
```

### Cambiar encabezado

Edita las líneas 77-78:

```latex
\fancyhead[L]{\small Tu Curso}
\fancyhead[R]{\small Tu Experimento}
```

### Ajustar márgenes

Edita las líneas 66-72:

```latex
\usepackage[
    top=2.5cm,
    bottom=2.5cm,
    left=1.8cm,
    right=1.8cm
]{geometry}
```

### Agregar imágenes

Coloca tus imágenes en `docs/graficos/` y úsalas así:

```latex
\begin{figure}[H]
\centering
\includegraphics[width=0.45\textwidth]{docs/graficos/tu_imagen.png}
\caption{Descripción de tu imagen.}
\label{fig:mi_figura}
\end{figure}
```

### Agregar tablas

```latex
\begin{table}[H]
\centering
\small
\begin{tabular}{ccc}
\toprule
Columna 1 & Columna 2 & Columna 3 \\
\midrule
Dato 1 & Dato 2 & Dato 3 \\
\bottomrule
\end{tabular}
\caption{Descripción de tu tabla.}
\end{table}
```

## 📐 Reglas de Formato

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

### PDFs no se actualizan en el visor

Cierra el PDF antes de compilar, o usa un visor que soporte recarga automática (SumatraPDF en Windows).

## 🤝 Contribuciones

Las contribuciones son bienvenidas. Si encuentras algún problema o tienes sugerencias:

1. Abre un **Issue** describiendo el problema o mejora
2. Haz un **Fork** del proyecto
3. Crea una **Pull Request** con tus cambios

## 📄 Licencia

Este proyecto está bajo la Licencia MIT - consulta el archivo LICENSE para más detalles.

## ✨ Ejemplo

El archivo `informe_laboratorio.tex` incluye un ejemplo completo de un informe de laboratorio de física sobre determinación de la aceleración de gravedad mediante caída libre, que demuestra todas las características de la plantilla.

## 📧 Contacto

Si tienes preguntas o sugerencias, no dudes en abrir un issue en GitHub.

---

**¿Te resultó útil esta plantilla?** ¡Dale una ⭐ en GitHub!

#!/bin/bash

# 🚀 Script para subir Alma Therapy a GitHub
# Copia este archivo y ejecútalo en tu terminal

echo "🚀 Iniciando subida a GitHub..."
echo ""

# Ve a la carpeta del proyecto
cd /mnt/user-data/outputs/alma-therapy-final

# Crear README para GitHub
echo "# Alma Therapy" >> README.md
echo "Web profesional para Alma Therapy - Centro de masajes terapéuticos en Santiago de Compostela" >> README.md
echo "" >> README.md
echo "## Características" >> README.md
echo "- Diseño responsive" >> README.md
echo "- Chat integrado con n8n" >> README.md
echo "- 6 servicios terapéuticos" >> README.md
echo "- Formulario de contacto" >> README.md

# Inicializar Git
echo "📦 Inicializando repositorio Git..."
git init

# Agregar todos los archivos
echo "📂 Agregando archivos..."
git add .

# Hacer commit
echo "✅ Creando primer commit..."
git commit -m "✨ Initial commit: Alma Therapy website con chat integrado"

# Cambiar a rama main
echo "🌿 Cambiando a rama main..."
git branch -M main

# Conectar con GitHub (tu repositorio)
echo "🔗 Conectando con GitHub..."
git remote add origin https://github.com/klaker79/Alma.git

# Subir el código
echo "⬆️  Subiendo código a GitHub..."
git push -u origin main

echo ""
echo "✅ ¡Listo! Tu código está en GitHub"
echo "🌐 URL: https://github.com/klaker79/Alma"
echo ""
echo "💡 Próximo paso: Activar GitHub Pages"
echo "   1. Ve a Settings → Pages"
echo "   2. Source: main branch"
echo "   3. Tu web estará en: https://klaker79.github.io/Alma/"

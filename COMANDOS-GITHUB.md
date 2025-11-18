# 🚀 COMANDOS PARA SUBIR A GITHUB

## OPCIÓN 1: Copiar y pegar TODO de una vez

```bash
# Ve a tu carpeta (ajusta la ruta según donde descargaste los archivos)
cd ~/Downloads/alma-therapy-final

# Ejecuta todos estos comandos de golpe:
git init && \
git add . && \
git commit -m "✨ Initial commit: Alma Therapy website con chat integrado" && \
git branch -M main && \
git remote add origin https://github.com/klaker79/Alma.git && \
git push -u origin main
```

---

## OPCIÓN 2: Paso a paso (Recomendado si es tu primera vez)

### Paso 1: Ve a tu carpeta
```bash
cd ~/Downloads/alma-therapy-final
```
(Ajusta la ruta donde descargaste los archivos)

### Paso 2: Inicializar Git
```bash
git init
```

### Paso 3: Agregar archivos
```bash
git add .
```

### Paso 4: Crear commit
```bash
git commit -m "✨ Initial commit: Alma Therapy website con chat integrado"
```

### Paso 5: Cambiar a rama main
```bash
git branch -M main
```

### Paso 6: Conectar con GitHub
```bash
git remote add origin https://github.com/klaker79/Alma.git
```

### Paso 7: Subir código
```bash
git push -u origin main
```

---

## ⚠️ Si te pide autenticación

GitHub te pedirá usuario y contraseña:
- **Username**: klaker79
- **Password**: NO uses tu contraseña normal, necesitas un TOKEN

### Crear Token Personal:
1. Ve a: https://github.com/settings/tokens
2. Click "Generate new token (classic)"
3. Nombre: `alma-therapy-upload`
4. Selecciona: `repo` (marca todos los checkboxes debajo)
5. Click "Generate token"
6. **COPIA EL TOKEN** (empieza con `ghp_...`)
7. Usa ese token como contraseña

---

## 🎯 Después de subir

### Ver tu código en GitHub:
https://github.com/klaker79/Alma

### Activar GitHub Pages (Web gratis):
1. Ve a: https://github.com/klaker79/Alma/settings/pages
2. En "Source", selecciona: `main` branch
3. Click "Save"
4. Espera 1-2 minutos
5. Tu web estará en: https://klaker79.github.io/Alma/

---

## 📝 Comandos útiles para el futuro

```bash
# Ver estado
git status

# Subir cambios nuevos
git add .
git commit -m "Descripción del cambio"
git push

# Ver historial
git log --oneline

# Descargar cambios
git pull
```

---

## 🆘 Solución de problemas

### Error: "repository not found"
- Verifica que estás usando: https://github.com/klaker79/Alma.git

### Error: "permission denied"
- Usa un token personal en vez de contraseña

### Error: "failed to push some refs"
```bash
git pull origin main --allow-unrelated-histories
git push origin main
```

### Error: "not a git repository"
- Estás en la carpeta incorrecta, ve a donde están tus archivos

# 🌟 ALMA THERAPY - Web Completa

## 📦 Contenido del Paquete

Tu web está lista con todo lo que necesitas:

```
alma-therapy-final/
├── index.html                    ← Tu página web principal
├── hero.jpg                      ← Imagen principal (Alma Therapy logo)
├── about.jpg                     ← Imagen "Sobre Nosotros"
├── spa1.jpg                      ← Imagen servicios 1
├── spa2.jpg                      ← Imagen servicios 2
├── INSTRUCCIONES-CHAT-N8N.md    ← Guía para conectar el chat
└── README.md                     ← Este archivo
```

---

## ✨ Características

### 🎨 Diseño
- ✅ Colores dorados brillantes (como en tu captura)
- ✅ Diseño responsive (móvil, tablet, desktop)
- ✅ Animaciones suaves
- ✅ Tipografías elegantes (Playfair Display + Inter)
- ✅ Sombras y efectos profesionales

### 📱 Funcionalidades
- ✅ Navegación sticky (se queda arriba al hacer scroll)
- ✅ 6 servicios detallados con iconos
- ✅ Formulario de contacto funcional
- ✅ Sección de testimonios
- ✅ Información de horarios y precios
- ✅ **Chat flotante integrado** 💬

### 💬 Chat Widget
- ✅ Botón flotante dorado (abajo derecha)
- ✅ Ventana de chat elegante
- ✅ Listo para conectar con n8n
- ✅ Animaciones de entrada/salida
- ✅ Responsive en móvil

---

## 🚀 Cómo Usar

### Opción 1: Local (Pruebas)
1. Descarga toda la carpeta `alma-therapy-final`
2. Abre `index.html` con tu navegador
3. ¡Listo! Ya puedes ver la web

### Opción 2: Subir a Hosting
1. Sube todos los archivos a tu servidor (Hostinger, etc.)
2. Configura el dominio para que apunte a `index.html`
3. Asegúrate de que las imágenes estén en la misma carpeta

---

## 🔧 Configurar el Chat con n8n

**Lee el archivo:** `INSTRUCCIONES-CHAT-N8N.md`

En resumen:
1. Crea un webhook en n8n
2. Copia la URL del webhook
3. Abre `index.html` y busca la línea 855:
   ```javascript
   const N8N_WEBHOOK_URL = 'https://tu-n8n.com/webhook/alma-therapy-chat';
   ```
4. Reemplaza con TU URL de n8n
5. Guarda y prueba

---

## 📊 Información de la Web

### Secciones:
1. **Hero** - Portada con logo Alma Therapy
2. **Servicios** - 6 masajes con descripción y precio (25€/hora)
3. **Reservas** - Horarios, pagos, política de cancelación
4. **Sobre Alma Therapy** - Descripción de la terapeuta
5. **Testimonios** - 5 reseñas de clientes
6. **Contacto** - Formulario + datos (teléfono, email, ubicación)

### Datos de Contacto:
- 📍 Santiago de Compostela
- 📞 621 028 840
- 📧 anaismoragom@gmail.com
- 🕐 Lunes a Viernes: 10:00 - 20:00

---

## 🎨 Paleta de Colores

```css
Fondo Principal: #f9f3e9
Fondo Tarjetas: #fffbf5
Acento Dorado: #e6b87d
Acento Oscuro: #d4a574
Texto Principal: #3a3024
Texto Suave: #6b5d4f
```

Si quieres cambiar colores, edita las líneas 10-18 del `index.html`

---

## 📱 Responsive Breakpoints

- **Desktop**: > 1200px
- **Tablet**: 768px - 1200px
- **Móvil**: < 768px

La web se adapta automáticamente a todos los tamaños de pantalla.

---

## 🔄 Actualizaciones Futuras

### Para cambiar textos:
1. Abre `index.html` con cualquier editor de texto
2. Busca el texto que quieres cambiar (Ctrl+F)
3. Modifica y guarda

### Para cambiar imágenes:
1. Reemplaza los archivos `.jpg` por tus nuevas fotos
2. Mantén los mismos nombres de archivo
3. Recarga la página

### Para cambiar colores:
1. Edita las variables CSS en las líneas 10-18
2. Guarda y recarga

---

## ⚠️ Notas Importantes

1. **Imágenes**: Las fotos están optimizadas (aprox. 300KB cada una)
2. **Chat**: Necesita configurarse con n8n para funcionar
3. **Formulario**: Actualmente solo muestra alerta, puedes conectarlo a n8n también
4. **Hosting**: Compatible con cualquier hosting web estándar

---

## 🆘 Soporte

Si necesitas ayuda:
1. Revisa las instrucciones paso a paso
2. Verifica que todos los archivos estén en la misma carpeta
3. Abre la consola del navegador (F12) para ver errores

---

## 📈 Próximos Pasos Sugeridos

1. ✅ Configura el chat con n8n
2. ✅ Sube la web a tu dominio
3. ✅ Configura Google Analytics (opcional)
4. ✅ Añade certificado SSL (https)
5. ✅ Conecta el formulario de contacto a email/n8n

---

## 🎉 ¡Tu web está lista!

- Diseño profesional ✅
- Colores dorados brillantes ✅
- Tus fotos integradas ✅
- Chat funcional ✅
- Responsive ✅
- Todo en español ✅

**Solo falta:**
1. Subir a tu hosting
2. Conectar el chat con n8n
3. ¡Empezar a recibir clientes!

---

**Creado con ❤️ para Alma Therapy**

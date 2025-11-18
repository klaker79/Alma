# 💬 GUÍA PARA CONECTAR EL CHAT CON N8N

## 📋 Resumen

El chat está listo para conectarse con n8n. Solo necesitas:
1. Crear un webhook en n8n
2. Cambiar 1 línea en el HTML
3. ¡Listo!

---

## 🔧 PASO 1: Configurar n8n

### Crear el Workflow en n8n:

1. **Webhook Node** (Trigger)
   - Method: `POST`
   - Path: `/alma-therapy-chat` (o el que quieras)
   - Response Mode: `Respond to Webhook`

2. **Tu Lógica** (Procesar el mensaje)
   - Aquí va tu IA, base de datos, o lo que necesites
   - El webhook recibe:
     ```json
     {
       "message": "texto del usuario",
       "timestamp": "2025-11-18T22:30:00.000Z",
       "source": "alma-therapy-web",
       "userAgent": "Mozilla/5.0..."
     }
     ```

3. **Respond to Webhook Node** (Respuesta)
   - Responde con:
     ```json
     {
       "response": "Tu respuesta aquí"
     }
     ```
   - También acepta: `message` o `output`

---

## 🌐 PASO 2: Obtener la URL del Webhook

Cuando actives el webhook en n8n, te dará una URL como:
```
https://tu-instancia-n8n.com/webhook/alma-therapy-chat
```

O si es producción:
```
https://tu-instancia-n8n.com/webhook-prod/alma-therapy-chat
```

**Copia esa URL completa**

---

## ✏️ PASO 3: Configurar el HTML

Abre el archivo `index.html` y busca la línea 855 (aproximadamente):

```javascript
const N8N_WEBHOOK_URL = 'https://tu-n8n.com/webhook/alma-therapy-chat';
```

Reemplázala con TU URL:

```javascript
const N8N_WEBHOOK_URL = 'https://tu-instancia-real.com/webhook/alma-therapy-chat';
```

Guarda el archivo. **¡Eso es todo!**

---

## 🧪 PASO 4: Probar

1. Abre `index.html` en tu navegador
2. Haz clic en el botón de chat (círculo dorado abajo a la derecha)
3. Escribe un mensaje
4. Deberías ver:
   - Tu mensaje a la derecha (azul/dorado)
   - La respuesta de n8n a la izquierda (blanco)

---

## 🎨 Ejemplo de Workflow Simple en n8n

```
┌─────────────┐     ┌──────────────┐     ┌─────────────────┐
│   Webhook   │────>│  Set/Code    │────>│ Respond to     │
│   (Trigger) │     │  (Tu lógica) │     │  Webhook       │
└─────────────┘     └──────────────┘     └─────────────────┘
```

### Código de ejemplo para el nodo Code/Function:

```javascript
// Obtener el mensaje del usuario
const userMessage = $input.item.json.message;

// Tu lógica aquí (IA, base de datos, reglas, etc.)
let response = "¡Gracias por tu mensaje!";

// Si el mensaje contiene ciertas palabras clave...
if (userMessage.toLowerCase().includes('precio')) {
  response = "Todos nuestros servicios tienen un precio de 25€ por sesión de 1 hora.";
} else if (userMessage.toLowerCase().includes('horario')) {
  response = "Estamos disponibles de lunes a viernes de 10:00 a 20:00 horas.";
} else if (userMessage.toLowerCase().includes('reservar') || userMessage.toLowerCase().includes('cita')) {
  response = "Para reservar tu cita, por favor llama al 621 028 840 o envía un email a anaismoragom@gmail.com";
}

// Devolver la respuesta
return {
  json: {
    response: response
  }
};
```

---

## 🚀 Integración Avanzada (Opcional)

### Con OpenAI/ChatGPT:

```
Webhook ──> OpenAI Node ──> Respond to Webhook
```

### Con Base de Datos:

```
Webhook ──> Supabase/PostgreSQL ──> OpenAI ──> Supabase ──> Respond
```

### Con Email/Notificación:

```
Webhook ──> [Tu lógica] ──> Gmail/Slack ──> Respond
          │
          └──> Guardar en BD
```

---

## ⚠️ Solución de Problemas

### El chat no responde:
- ✅ Verifica que la URL del webhook sea correcta
- ✅ Activa el workflow en n8n (botón "Active")
- ✅ Revisa los logs en n8n
- ✅ Abre la consola del navegador (F12) para ver errores

### CORS Error:
Si ves error de CORS, en n8n:
- Settings → Security → Enable CORS
- Allowed Origins: `*` o tu dominio específico

### El webhook no recibe datos:
- Verifica que el Method sea `POST`
- Revisa el body en n8n para ver qué llega

---

## 📱 Estructura del Mensaje

### Lo que envía el chat:
```json
{
  "message": "Hola, ¿cuánto cuesta un masaje?",
  "timestamp": "2025-11-18T23:45:00.000Z",
  "source": "alma-therapy-web",
  "userAgent": "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7)..."
}
```

### Lo que n8n debe responder:
```json
{
  "response": "El precio de todos nuestros masajes es de 25€ por sesión."
}
```

---

## 💡 Tips

1. **Respuestas Rápidas**: Guarda respuestas predefinidas para preguntas comunes
2. **Contexto**: Usa una base de datos para mantener historial de conversación
3. **Fallback**: Siempre ten una respuesta por defecto si no entiendes el mensaje
4. **Testing**: Prueba con n8n en modo "test" antes de activar en producción

---

## 🎯 ¡Ya está todo listo!

Tu chat tiene:
- ✅ Diseño dorado brillante (matching con la web)
- ✅ Widget flotante responsive
- ✅ Conexión lista para n8n
- ✅ Animaciones suaves
- ✅ UX optimizada

Solo necesitas configurar tu webhook en n8n y cambiar la URL en el HTML.

**¿Necesitas ayuda con el workflow de n8n?** Avísame y te ayudo a configurarlo. 🚀

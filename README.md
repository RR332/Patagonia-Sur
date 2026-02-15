# Patagonia Sur - Landing Page

Landing page para exportación de frutas y mariscos premium desde Chile.

## 🚀 Deploy en Vercel

### Paso 1: Subir a GitHub

```bash
# Clona el repositorio
git clone https://github.com/RR332/Patagonia-Sur.git
cd Patagonia-Sur

# Crea la carpeta assets y agrega el logo
mkdir -p assets
# Copia tu archivo "PATAGONIA LOGO.jpg" a assets/ y renómbralo a "patagonia-logo.jpg"

# Agrega los archivos
git add .
git commit -m "Landing Patagonia Sur con integración Supabase"
git push origin main
```

### Paso 2: Configurar Supabase

En Supabase SQL Editor, ejecuta el archivo `supabase-setup.sql`.

### Paso 3: Deploy en Vercel

1. Ve a [vercel.com](https://vercel.com)
2. Click en **"Add New..." → "Project"**
3. Selecciona **"Import Git Repository"**
4. Busca y selecciona: `RR332/Patagonia-Sur`
5. Configuración:
   - **Framework Preset:** Other
   - **Build Command:** (dejar vacío)
   - **Output Directory:** (dejar vacío)
6. Click en **"Deploy"**

¡Listo! Tu sitio estará en línea en segundos.

## 📌 Características

- ✅ Hero section con 8 frutas de exportación chilenas
- ✅ Formulario de contacto conectado a Supabase
- ✅ WhatsApp directo con mensaje prellenado
- ✅ Modo oscuro/claro
- ✅ Diseño responsive
- ✅ Botón flotante de WhatsApp
- ✅ Mensaje de éxito con CTA a WhatsApp

## 📞 Contacto

- **WhatsApp:** +56 9 5907 9058
- **Email:** ventaspatagoniasurspa@gmail.com
- **Ubicación:** Curicó, Chile

## 🛠️ Tecnologías

- HTML5
- TailwindCSS
- Supabase (backend)
- Vercel (hosting)

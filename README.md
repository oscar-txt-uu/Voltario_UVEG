# VOLTARIO · Laboratorio energético del hogar

Aplicación web educativa de autoría generada para este ejercicio: calcula el consumo energético aproximado de una selección de aparatos (kWh/mes), estima el gasto con una tarifa modificable y simula el ahorro al reducir las horas de uso. **No consulta tarifas CFE ni mide consumo real**.

## Funcionalidades
- Catálogo de ocho aparatos con datos iniciales editables.
- Registro y eliminación de aparatos, persistencia local en `localStorage`.
- Cálculo: `kWh/mes = (W × horas/día × cantidad × 30)/1000`.
- Costo: suma de `kWh × tarifa ingresada` por aparato.
- Gráfico de barras proporcional y simulador de reducción de horas.
- Interfaz adaptable a móvil, sin frameworks ni dependencias externas.

## Estructura
`css/` estilos fuente y de entrega; `js/` lógica fuente y de entrega; `img/` icono vectorial; `dist/voltario/` sitio preparado para publicar; `apache/` VirtualHost; `Dockerfile` y `compose.yaml` despliegue; `index.html` entrada.

## macOS Apple Silicon M3 — cómo ejecutar
1. Instalar Docker Desktop para Apple Silicon y esperar que el motor esté disponible.
2. Abrir Terminal, cambiar a esta carpeta y ejecutar `docker compose up --build -d`.
3. Visitar `http://localhost:8080/voltario/`.
4. Comprobar con `docker compose ps` y `curl -I http://localhost:8080/voltario/`.
5. Detener con `docker compose down`.

Puerto **8080** en macOS a **80** en Apache del contenedor. `Alias /voltario` expone `dist/voltario` en la URL mostrada. No uses `localhost/tuapp` sin ajustar la configuración: es un ejemplo de la guía UVEG.

## Distribución
Desde la carpeta raíz: `cd dist && zip -r ../Voltario_despliegue.zip voltario && cd ..`.

## Versionamiento sugerido
Crear commits descriptivos reales, por ejemplo `feat: implementar calculadora de consumo`, `feat: agregar simulador de ahorro`, `chore: preparar contenedor Apache`, `docs: documentar pruebas y despliegue`. Publicar en GitHub con un repositorio propio y adjuntar capturas tomadas durante el procedimiento.

## Limitaciones
Las potencias y horas son valores didácticos, no mediciones. Un refrigerador, por ejemplo, no consume su potencia nominal durante todas las horas; la tarifa real puede variar por ubicación y escalones de facturación. La reducción porcentual aplica idealmente a las horas de uso y el costo estimado, **no garantiza** el mismo ahorro real.

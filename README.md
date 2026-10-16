# VOLTARIO | Laboratorio energético del hogar

Aplicación web generada para este ejercicio: calcula el consumo energético aproximado de una selección de aparatos (kWh/mes), estima el gasto con una tarifa modificable y simula el ahorro al reducir las horas de uso. **No consulta tarifas CFE ni mide consumo real**.

## Funcionalidades
- Catálogo de ocho aparatos con datos iniciales editables.
- Registro y eliminación de aparatos, persistencia local en `localStorage`.
- Cálculo: `kWh/mes = (W × horas/día × cantidad × 30)/1000`.
- Costo: suma de `kWh × tarifa ingresada` por aparato.
- Gráfico de barras proporcional y simulador de reducción de horas.
- Interfaz adaptable a móvil, sin frameworks ni dependencias externas.

## Estructura
`css/` estilos fuente y de entrega; `js/` lógica fuente y de entrega; `img/` icono vectorial; `dist/voltario/` sitio preparado para publicar; `apache/` VirtualHost; `Dockerfile` y `compose.yaml` despliegue; `index.html` entrada.

## Versionamiento sugerido
Crear commits descriptivos reales, por ejemplo `comentario: implementar calculadora de consumo`, `chore: preparar contenedor Apache`, `docs: documentar pruebas y despliegue`. Publicar en GitHub con un repositorio propio y adjuntar capturas tomadas durante el procedimiento.

## Limitaciones
Las potencias y horas son valores de prueba educativa, no mediciones. Un refrigerador, por ejemplo, no consume su potencia nominal durante todas las horas; la tarifa real puede variar por ubicación y escalones de facturación. La reducción porcentual aplica idealmente a las horas de uso y el costo estimado, **no garantiza** el mismo ahorro real.

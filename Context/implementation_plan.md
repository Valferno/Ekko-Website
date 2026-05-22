# Plan de Implementación: Ilustraciones Geométricas Provisionales para Bestiario y Eventos

Este plan describe cómo agregaremos ilustraciones vectoriales/geométricas en CSS (similares a los hermosos placeholders de "Criaturas Destacadas" del Inicio) a todas las criaturas del bestiario (`Paginas/Bestiario.html`) y a todos los eventos (`Paginas/Eventos.html`). 

Para evitar diseños uniformes o aburridos, crearemos un sistema dinámico en JavaScript que asigna combinaciones únicas de **degradados de fondo (cielos del vacío)** y **glifos geométricos de neón** basados en los atributos (familia, tipo, categoría o nombre) de cada carta.

---

## User Review Required

> [!IMPORTANT]
> **Consistencia Estética Premium**: Utilizaremos exactamente los mismos estilos modernos de comic-minimalism (bordes negros gruesos, gradientes armoniosos y brillos bioluminiscentes de neón) del inicio.
> 
> **Centralización en `Styles.css`**: Centralizaremos todas las reglas CSS de `.tcg-art` y `.art-glyph` en el archivo global `Styles.css` para mantener los archivos HTML limpios de estilos duplicados y facilitar el mantenimiento futuro cuando definamos el arte final.
> 
> **Asignación Dinámica Inteligente**: Escribiremos algoritmos sencillos en JavaScript en cada página que analicen los campos de los datos (ej. "Familia" o "Nombre") y devuelvan una combinación estética específica en lugar de placeholders idénticos.

---

## Proposed Changes

### Estilos Compartidos

#### [MODIFY] [Styles.css](file:///c:/Fox/Suspicious%20Geet/Ekko/Styles.css)
* Mover e integrar las reglas `.tcg-art` y `.art-glyph` del inicio a `Styles.css`.
* Definir una variedad extendida de degradados premium para representar diferentes familias y tipos de cartas:
  * `.tcg-art--death` (Gótico/Sombrío - Cuervos/Sombras): Negro a Violeta profundo.
  * `.tcg-art--phoenix` (Ígneo - Fénix/Fuego): Naranja quemado a Oro radiante.
  * `.tcg-art--owl` (Aero/Cian - Búhos/Aves): Azul noche a Cian brillante.
  * `.tcg-art--nature` (Ácido/Tóxico - Insectoides/Arañas): Verde bosque a Lima eléctrico.
  * `.tcg-art--steel` (Industrial - Halcones/Titanes): Gris plomo a Aluminio/Chasis.
  * `.tcg-art--abyssal` (Acuáticos): Azul cobalto a Verde esmeralda.
  * `.tcg-art--cosmic` (Monstruos/Mágico): Púrpura cósmico a Magenta neón.
  * `.tcg-art--spell` (Eventos de combate): Rosado cibernético a Naranja plasma.
  * `.tcg-art--ritual` (Eventos de apoyo): Azul eléctrico a Amarillo dorado.
  * `.tcg-art--chronos` (Días de la semana): Púrpura crepúsculo a Coral ardiente.
* Definir nuevos glifos geométricos limpios usando bordes blancos y sombras bioluminiscentes:
  * `.art-glyph--circle` (Círculo rotado / Cuervo): Círculo clásico con desfase de color.
  * `.art-glyph--triangle` (Triángulo / Fénix): Triángulo equilátero estilizado en CSS puro.
  * `.art-glyph--square` (Cuadrado rotado / Búho): Rombo moderno con inclinación.
  * `.art-glyph--diamond` (Diamante / Halcones/Cazadores): Glifo esbelto.
  * `.art-glyph--hexagon` (Hexágono / Insectoides): Silueta facetada.
  * `.art-glyph--ring` (Anillo concéntrico / Acuáticos/Eventos): Órbita circular doble.
  * `.art-glyph--star` (Estrella/Destello / Días/Rituales): Cruz geométrica con brillo central.

---

### Componente del Bestiario

#### [MODIFY] [Bestiario.html](file:///c:/Fox/Suspicious%20Geet/Ekko/Paginas/Bestiario.html)
* **Actualizar Plantilla**: Insertar el bloque de arte en el `<template id="bestCardTpl">` justo debajo del título `.mechanic-name`:
  ```html
  <div class="tcg-art" data-art-container>
    <div class="art-glyph" data-art-glyph></div>
  </div>
  ```
* **Implementar Lógica de Mapeo Estético**:
  * Crear la función `getCreatureArt(c)` que evalúa `c.familia` y `c.tipo`.
  * *Aves (Cuervo)* -> Gradient `death` + Glyph `circle`.
  * *Aves (Fénix)* -> Gradient `phoenix` + Glyph `triangle`.
  * *Aves (Búho)* -> Gradient `owl` + Glyph `square`.
  * *Aves (Halcón)* -> Gradient `steel` + Glyph `diamond`.
  * *Cazadores* -> Gradient `steel`/`nature` + Glyph `diamond`/`hexagon`.
  * *Insectoide* -> Gradient `nature` + Glyph `hexagon`.
  * *Monstruos* -> Gradient `cosmic`/`death` + Glyph `ring`/`square`.
  * *Acuáticos* -> Gradient `abyssal` + Glyph `ring`.
* **Asignación Dinámica**: En la función `render(list)`, buscar los elementos `data-art-container` y `data-art-glyph` dentro de la tarjeta clonada y aplicarles las clases CSS correspondientes.

---

### Componente de Eventos

#### [MODIFY] [Eventos.html](file:///c:/Fox/Suspicious%20Geet/Ekko/Paginas/Eventos.html)
* **Actualizar Plantilla**: Insertar el bloque de arte en `<template id="eventCardTpl">` justo debajo del título `.mechanic-name`:
  ```html
  <div class="tcg-art" data-art-container>
    <div class="art-glyph" data-art-glyph></div>
  </div>
  ```
* **Implementar Lógica de Mapeo Estético**:
  * Crear la función `getEventArt(e)` que evalúa el nombre y la descripción del evento.
  * Si el nombre contiene días de la semana (*Lunes*, *Martes*, etc.) -> Gradient `chronos` + Glyph `star`.
  * Si el nombre contiene *Sacrificio*, *Ataque*, *Fusión*, *Mutación* (combate) -> Gradient `spell` + Glyph `triangle`.
  * Si contiene *Entrenamiento*, *Retiro*, *Refuerzos* (apoyo) -> Gradient `ritual` + Glyph `diamond`.
  * Si contiene *Lluvia*, *Tormenta* (elemental) -> Gradient `owl`/`abyssal` + Glyph `ring`.
* **Asignación Dinámica**: En la función `render()`, buscar los elementos `data-art-container` y `data-art-glyph` dentro de la tarjeta clonada y aplicarles las clases CSS correspondientes.

---

## Plan de Verificación

### Pruebas Manuales y Visuales
1. **Verificar Bestiario**: Abrir `Paginas/Bestiario.html` en el navegador. Comprobar que todas las criaturas tienen ahora una tarjeta que luce premium con su ilustración provisional y su glifo neón centrado.
2. **Verificar Eventos**: Abrir `Paginas/Eventos.html`. Validar que todos los hechizos y eventos tienen un placeholder correspondiente y temático.
3. **Verificar Filtros**: Utilizar los filtros de búsqueda y de estado en ambas páginas para asegurar que el renderizado dinámico del arte no rompe ni hace parpadear la interfaz.
4. **Garantía de Responsividad**: Validar que en pantallas móviles la rejilla de tarjetas siga acomodándose elegantemente sin desbordamientos de texto.

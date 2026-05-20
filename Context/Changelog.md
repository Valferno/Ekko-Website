# EKKO - Registro de Cambios (Changelog)
**Documento comparativo: Reglamento Inicial vs. Versión 0.06.190526**

Este documento detalla todas las incorporaciones, modificaciones y decisiones de diseño implementadas para transformar la propuesta básica inicial en la versión actual del reglamento oficial del juego **EKKO**.

---

## 🚀 Resumen del Gran Salto de Diseño
El juego evolucionó de un sistema básico de combate libre a un juego táctico con un fuerte componente de **gestión de recursos (Ekko)**, **posicionamiento estricto por carriles**, **combate unidireccional** y un innovador sistema de **Mecánicas de Legado (Persistencia Inter-Ronda)**.

---

## 📋 Detalle de Cambios por Sección

### 1. Nombre e Identidad del Juego
* **Antes:** Sin nombre definido.
* **Ahora:** Se adopta oficialmente el nombre **EKKO**, alineado con la mecánica del recurso principal del juego.

### 2. Estructura y Claridad de Reglas de Victoria (Sección 1)
* **Antes:** Reglamento en prosa informal.
* **Ahora:** Formalización y nomenclatura técnica: **1.A. Puntos de Vida en 0** y **1.B. Deckeo** (derrota por falta de cartas al robar).

### 3. Anatomía de una Carta de Criatura (Sección 4) — *[NUEVO]*
* **Antes:** No se especificaban los atributos de las criaturas (solo se mencionaba que atacaban).
* **Ahora:** Se define una estructura técnica formal para cada carta:
  * **Nombre:** Identidad narrativa.
  * **Nivel (0 al 5):** Habilita criaturas de Nivel 0 (gratuitas).
  * **Tipo de Carta:** Familias y etiquetas para sinergias estratégicas (ej. *Bestia*, *Mecánico*).
  * **Ataque (ATK) y Resistencia (HP):** Estadísticas de combate numéricas claras.
  * **Efecto/Texto:** Habilidades especiales escritas.

### 4. Reglas de Posicionamiento y Movilidad (Sección 5) — *[NUEVO]*
* **Antes:** Tablero de 2x5 mencionado, sin restricciones de uso del espacio.
* **Ahora:** Se añaden dos limitaciones de juego cruciales:
  * **Sin Reemplazo:** No se puede invocar encima de otra criatura. Se requiere que el carril esté vacío.
  * **Sin Movimiento:** Las criaturas están fijas en el carril donde son invocadas, salvo que su texto indique lo contrario.

### 5. Sistema de Recursos "Ekko" (Sección 6) — *[NUEVO]*
* **Antes:** No existía ningún recurso limitador; se podían jugar infinitas cartas sin coste.
* **Ahora:** Se implementa el sistema **Ekko**:
  * Cada jugador gana **+1 Ekko** al inicio de su turno.
  * **Acumulación total:** El Ekko sobrante no se pierde al final del turno; se guarda para turnos futuros dentro de la ronda.
  * **Costo de Invocación:** Invocar una criatura consume Ekko igual a su Nivel.

### 6. Mecánica de Combate y Daño (Sección 7.3) — *[MODIFICADO]*
* **Antes:** Combate general de criaturas que atacan en sus fases.
* **Ahora:** Decisiones estratégicas críticas para la jugabilidad móvil:
  * **Sin Mareo de Invocación:** Las criaturas pueden atacar el mismo turno en el que entran al tablero.
  * **Combate Unidireccional (Opción Y):** El atacante inflige daño al defensor, pero el defensor **no devuelve daño de forma pasiva** en el turno del oponente (a menos que tenga una habilidad especial que lo especifique). Esto hace que el "Turno Dominante" sea sumamente agresivo y dinámico.

### 7. Comportamiento y Flujo de los Eventos (Sección 8) — *[MODIFICADO]*
* **Antes:** "Al finalizar ambos turnos, cada jugador roba, en orden, una carta de evento...".
* **Ahora:** Se formaliza el flujo cíclico con reglas claras:
  * **Tipos de Eventos:** Diferenciación entre **Eventos Globales** (automáticos) y **Con Objetivo** (requieren selección en pantalla, se descartan sin efecto si no hay objetivos).
  * **Orden Rotativo:** Se compensa la iniciativa haciendo que el jugador inicial accione primero en el ciclo 1, el oponente primero en el ciclo 2, y así sucesivamente.
  * **Reciclaje de Pila:** Se adopta la *Opción A*, rebarajando los eventos descartados cuando la pila compartida se vacía.

### 8. Mecánica de Legado / Persistencia Inter-Ronda (Sección 9) — *[NUEVO]*
* **Antes:** No existía. Cada ronda era independiente.
* **Ahora:** Se introduce la característica más innovadora del juego, donde el impacto de los eventos persiste durante todo el match (las 3 rondas):
  * **Eliminación Persistente (9.A):** Si un evento destruye/sacrifica una criatura de forma persistente, esta es desterrada del mazo por el resto de la partida (Rondas 2 y 3), reduciendo el mazo disponible.
  * **Modificación Persistente (9.B):** Si un evento altera las estadísticas o añade habilidades a una criatura, el cambio se mantiene en la carta física para todo el match, incluso si muere, va al cementerio y se vuelve a robar en la ronda siguiente.

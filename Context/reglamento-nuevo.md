# EKKO - Reglamento (Nuevo)

(Documento generado/actualizado desde `Reglamento v0.06.190526.md`)

---

## 1. Conceptos Básicos y Condiciones de Victoria
El juego es de ritmo rápido y se juega al **mejor de 3 rondas** (el primer jugador en ganar 2 rondas gana la partida).

Cada jugador comienza cada ronda con **20 Puntos de Vida (HP)**. Un jugador es derrotado en una ronda si ocurre cualquiera de las siguientes condiciones:
* **1.A. Puntos de Vida en 0:** Sus HP se reducen a 0 o menos.
* **1.B. Deckeo (Sin cartas):** Se queda sin cartas en su mazo de criaturas al momento de verse obligado a robar una carta.

---

## 2. Composición de los Mazos y Preparación
Cada jugador debe presentarse con dos mazos:
* **2.1. Mazo de Criaturas:** Compuesto por exactamente **20 cartas**. Se permiten hasta **4 copias** de una misma carta de criatura.
* **2.2. Mazo de Eventos:** Compuesto por exactamente **5 cartas de evento**. No se permiten duplicados (todas las cartas de evento del mazo deben ser únicas).

### Preparación de la Partida:
Al inicio del juego, las 5 cartas de evento de ambos jugadores se retiran de sus mazos y se mezclan en una única **Pila de Eventos Compartida** (10 cartas en total), la cual se coloca en el centro de la mesa de juego virtual.

---

## 3. Zona de Conflicto (El Tablero)
El tablero de juego está optimizado para dispositivos móviles y se compone de una cuadrícula de **2x5**:
* Cada jugador dispone de una fila con **5 carriles (columnas)** para colocar sus criaturas.
* Las criaturas de un jugador se enfrentan directamente a las del oponente en el mismo carril.

---

## 4. Anatomía de una Carta de Criatura
Cada criatura posee una ficha técnica con los siguientes datos:
* **4.1. Nombre:** Identidad visual y narrativa de la criatura.
* **4.2. Nivel (Costo de Ekko):** Un valor numérico de **0 a 5**. Determina el costo de recurso necesario para invocarla (las criaturas de Nivel 0 son gratuitas).
* **4.3. Tipo de Carta:** Define la familia/categoría a la que pertenece la criatura. Esto sirve para sinergias y efectos específicos.
* **4.4. Puntos de Ataque (ATK):** El daño que la criatura inflige durante la Fase de Combate.
* **4.5. Puntos de Resistencia (HP):** La cantidad de daño que puede soportar antes de ser destruida.
* **4.6. Efecto/Texto (Opcional):** Habilidades particulares descritas en la carta.

---

## 5. Reglas de Posicionamiento y Movilidad
La colocación de las criaturas en el tablero sigue reglas estrictas para promover la planificación táctica:
* **Sin Reemplazo:** No es posible invocar una criatura en un carril que ya esté ocupado por otra criatura. Para colocar una criatura en un carril ocupado, el espacio debe quedar vacío primero (por ejemplo, tras la destrucción de la criatura anterior).
* **Sin Movimiento:** Once invocada en un carril específico, la criatura queda fija en esa posición. No es posible moverla a otros carriles, a menos que la propia carta de criatura o un efecto de evento detalle y permita explícitamente el movimiento en su texto.

---

## 6. Gestión de Recursos: Sistema "Ekko"
El juego utiliza un sistema de recursos acumulativo único llamado **Ekko**:
* Al inicio de cada turno de un jugador, este recibe **+1 recurso Ekko**.
* **Acumulación:** A diferencia de otros juegos de cartas, el Ekko que no gastes al final de tu turno **se conserva y se acumula** para turnos futuros. No hay límite en la cantidad de Ekko que puedes almacenar.
* **Invocación:** Invocar una criatura al tablero consume una cantidad de Ekko de tu reserva acumulada igual a su Nivel.

---

## 7. Estructura del Turno Dominante
Durante una ronda, los jugadores se turnan para tener el **Turno Dominante** (ser el jugador activo). El jugador activo pasa por las siguientes fases en orden:

* **7.1. Fase de Robo:** El jugador roba 1 carta de criatura de su mazo. *(Al inicio de la ronda, ambos jugadores roban una mano inicial de 5 cartas de criatura antes de que empiece el primer turno).*
* **7.2. Fase de Invocación:** El jugador activo puede gastar su Ekko acumulado para invocar criaturas de su mano en sus carriles vacíos.
  * *Nota:* No hay límite en el número de criaturas que se pueden jugar por turno, más allá de la disponibilidad de Ekko y de carriles vacíos en el tablero.
* **7.3. Fase de Combate:** Las criaturas del jugador activo atacan en sus carriles correspondientes.
  * Si hay una criatura enemiga en el mismo carril, ambas entran en combate.
  * Si el carril contrario está vacío, la criatura aliada ataca directamente a los puntos de vida del oponente, restándole HP igual a sus puntos de ataque (ATK).
  * Las criaturas del jugador defensor (en espera) no pueden iniciar ataques durante esta fase.
  * *Nota:* Las criaturas pueden atacar inmediatamente en el turno en que son invocadas (no hay mareo de invocación).
  * *Nota:* Las criaturas defensoras (en espera) no pueden iniciar ataques ni devolver daño durante esta fase, a menos que alguna habilidad lo especifique (Combate Unidireccional).
* **7.4. Cálculo y Persistencia de Daño:** Todo el daño infligido a las criaturas es **persistente**. Si una criatura sobrevive al combate con daño, su vida se reduce de manera permanente para los turnos siguientes.
* **7.5. Fin de Turno:** El jugador activo cede el Turno Dominante al oponente.

---

## 8. Fase de Eventos Cíclicos
Al finalizar un ciclo completo de turnos (cuando ambos jugadores han completado su Turno Dominante):

* **8.1. Robo de Evento:** Cada jugador roba, en orden, 1 carta de la Pila de Eventos Compartida y ejecuta su efecto inmediatamente en el juego de forma obligatoria.
* **8.2. Selección de Objetivos en Eventos:**
  * **Eventos Globales:** Sus efectos se aplican de manera automática a todo el tablero o a todos los jugadores por igual (ej. *"Tormenta: Hace 1 de daño a todas las criaturas"*).
  * **Eventos con Objetivo:** Si el evento requiere seleccionar una o más cartas (ej. *"Destruye una criatura enemiga"*), el jugador que robó la carta debe elegir el objetivo. Si no hay objetivos válidos en el tablero, la carta de evento se descarta sin aplicar ningún efecto.
* **8.3. Orden Rotativo:**
  * En el primer ciclo, el jugador que inició la partida roba y acciona su evento primero, seguido del oponente.
  * En el siguiente ciclo de eventos, el orden se invierte (el segundo jugador roba y acciona primero). El orden continúa alternándose en cada ciclo subsiguiente.
* **8.4. Reciclaje de Eventos:** Si la Pila de Eventos Compartida se queda sin cartas (ocurre en el ciclo 5), las cartas de evento ya jugadas se vuelven a mezclar para formar una nueva Pila de Eventos.

---

## 9. Mecánica de Legado (Persistencia Inter-Ronda)
Una de las características más singulares del juego es que el impacto de ciertos eventos trasciende la ronda actual y tiene consecuencias persistentes durante el resto de la partida (las 3 rondas del match).

* **9.A. Eliminación Persistente (Sacrificio / Destrucción por Evento):**
  Si una criatura es destruida o sacrificada debido específicamente al efecto de una carta de evento con propiedad de persistencia:
  * **Efecto en el Mazo:** Dicha carta de criatura es **removida permanentemente** del juego por el resto del match (Rondas 2 y 3). No va al cementerio común para ser barajada en la siguiente ronda; queda desterrada.
  * **Reducción de Mazo:** El tamaño máximo del mazo del jugador afectado se reduce para las rondas restantes.
  * **Recuperación:** La carta solo volverá a estar disponible en el mazo una vez que se complete la partida completa de 3 rondas.
* **9.B. Modificación Persistente (Mejoras y Alteraciones):**
  Si una carta de evento otorga un aumento permanente de estadísticas (ATK o HP) o añade una habilidad especial a una criatura en el tablero:
  * **Efecto de Legado:** Dicha mejora/alteración se graba de forma permanente en la carta física durante todo el match de 3 rondas.
  * **Persistencia post-destrucción:** Si esa criatura modificada muere de forma común durante la ronda actual, al prepararse la siguiente ronda del match (donde se barajan las criaturas del cementerio de vuelta al mazo), la criatura **mantendrá sus estadísticas y habilidades mejoradas** cuando vuelva a ser robada e invocada.


---
name: consejo-deliberiante
display_name: Consejo DeliberIAnte
version: 1.0.0
category: productivity
description: >
  Sistema adaptativo de deliberación multi-rol para respuestas limpias,
  directas y sin relleno. Detecta el tipo de consulta, elige roles útiles,
  cruza perspectivas y sintetiza una respuesta final en el modo indicado.
triggers:
  - "consejo"
  - "delibera"
  - "usa el consejo"
  - "modo council"
  - "respuesta sin sarasa"
  - "pensá como consejo"
  - "evolutionary council"
  - "consejo evolutivo"
  - "modo deliberativo"
  - "consulta el consejo"
  - "deliberia"
  - "delibera ia"
flags:
  - "--ultra": mínimo ruido, solo respuesta final condensada
  - "--deep": análisis profundo, más rondas de debate
  - "--quick": respuesta rápida, 3 roles, síntesis inmediata
  - "--roles": permite forzar roles específicos separados por coma
  - "--debug": muestra el proceso interno del consejo
  - "--mejora": dispara revisión meta de la skill
---

# Consejo DeliberIAnte

## Propósito

El Consejo DeliberIAnte es un modo de razonamiento estructurado que simula una mesa de expertos adaptativos. No repite los mismos roles mecánicamente. Detecta qué tipo de problema enfrenta el usuario, arma el panel más útil, debate, filtra el ruido y entrega una respuesta final directa.

Diseñado para usuarios que odian la sarasa y quieren que cada palabra sume.

## Cuándo activarse

Se activa automáticamente al detectar triggers como `consejo`, `delibera`, `modo council`, `respuesta sin sarasa`, `pensá como consejo`, `evolutionary council`, `consejo evolutivo`, `modo deliberativo`, `consulta el consejo`, `deliberia`.

También puede invocarse explícitamente con frases como:

- "Usá el consejo para esto."
- "Quiero una respuesta sin sarasa."
- "Deliberá con --ultra."
- "Pensá como consejo --deep."

## Filosofía de diseño

1. **Adaptatividad real**: el consejo no siempre tiene 6 miembros. A veces son 3, a veces 7. Depende del problema.
2. **Memoria consciente**: antes de responder, se consultan las preferencias históricas del usuario almacenadas en memoria (tono, nivel de detalle, estilo de respuesta, palabras prohibidas).
3. **Anti-sarasa estructural**: cada rol tiene la obligación de eliminar, no agregar, ruido.
4. **Auto-mejora programada**: después de cada 5 a 10 usos, o cuando el usuario dice "mejora el consejo", se ejecuta una revisión meta.
5. **Modularidad**: los roles, las rondas y los modos son configurables y extensibles.

## Modos de operación

### --quick
- 3 roles máximo.
- Un solo análisis por rol.
- Sin ronda de debate explícita.
- Síntesis final de 3 a 5 líneas.
- Ideal para decisiones triviales o consultas operativas rápidas.

### --deep
- 5 a 7 roles.
- Análisis individual extendido.
- Ronda de debate con cruces obligatorios.
- Filtro de objeciones no resueltas.
- Síntesis final con recomendación explícita, riesgos y próximo paso concreto.
- Ideal para decisiones complejas, estratégicas o técnicas.

### --ultra
- Solo la síntesis final.
- Sin mostrar el proceso.
- Sin frases de transición.
- Sin metáforas ni introducciones.
- Directo al grano. Punto por punto. Acción inmediata.
- Ideal para usuarios que ya conocen el sistema y solo quieren el output.

### --roles
Permite forzar roles específicos. Ejemplo:
- `--roles analista,devil,pragmatico`
- `--roles creativo,clarificador`

### --debug
Muestra el proceso interno: qué roles se eligieron, por qué, qué se debatió, qué objeciones quedaron, qué se descartó.

### --mejora
Activa el modo de revisión meta. No responde la consulta. En su lugar, analiza los últimos usos del consejo y propone ajustes a la skill.

## Roles base

El Sintetizador/Moderador siempre está presente implícitamente. Los demás se seleccionan según la consulta.

### 1. Analista Técnico / Preciso
- Descompone el problema en partes objetivas.
- Busca datos, hechos, causas raíz, dependencias.
- Pregunta: ¿qué es verdad? ¿qué falta? ¿qué puede fallar técnicamente?

### 2. Devil's Advocate / Crítico
- Presupone que la idea principal es incorrecta o riesgosa.
- Fuerza la defensa de cada supuesto.
- Pregunta: ¿por qué esto podría fracasar? ¿qué estamos ignorando?

### 3. Pragmático / Ejecutor
- Se enfoca en lo que se puede hacer ahora, con lo que se tiene.
- Propone acciones concretas, recursos, tiempos.
- Pregunta: ¿cuál es el próximo paso? ¿qué cuesta menos y entrega más?

### 4. Creativo / Lateral
- Explora alternativas no obvias.
- Rompe supuestos. Busca atajos, pivotes, soluciones elegantes.
- Pregunta: ¿hay otra forma de resolver esto? ¿qué nadie está viendo?

### 5. Clarificador Anti-Sarasa
- Detecta relleno, palabras huecas, metáforas innecesarias, sesgos emocionales.
- Reduce cada idea a su mínima expresión útil.
- Pregunta: ¿qué se está diciendo realmente? ¿esto puede decirse en una línea?

### 6. Sintetizador + Moderador
- Coordina los aportes.
- Detecta acuerdos y desacuerdos.
- Elabora la respuesta final según el modo solicitado.
- Tiene veto sobre la sarasa.

## Roles adicionales (según contexto)

- **Estratega**: para decisiones de alto nivel, negocios, alianzas.
- **Legal/Etico**: para temas regulatorios, compliance, riesgos reputacionales.
- **Usuario Final / Cliente**: para evaluar impacto en quien recibe el producto o servicio.
- **Inversionista / Financiero**: para evaluar costos, ROI, sostenibilidad económica.
- **Investigador**: para temas que requieren búsqueda externa, literatura, benchmarks.
- **Humano / Emocional**: para decisiones personales, relaciones, bienestar.
- **Optimizador**: para hacer más eficiente algo que ya funciona.
- **Riesgos / Seguridad**: para infraestructura, ciberseguridad, fiabilidad.

## Reglas de selección de roles

Antes de responder, el moderador clasifica la consulta:

| Tipo de consulta | Roles sugeridos |
|---|---|
| Técnica / debug | Analista, Pragmático, Devil's Advocate, Riesgos |
| Estratégica / negocio | Estratega, Devil's Advocate, Pragmático, Inversionista |
| Creativa / producto | Creativo, Usuario Final, Analista, Clarificador |
| Personal / decisión vital | Humano, Pragmático, Devil's Advocate, Clarificador |
| Rápida / operativa | Pragmático, Clarificador |
| Compleja / ambigua | Analista, Clarificador, Creativo, Devil's Advocate, Pragmático |

Si el usuario fuerza roles con `--roles`, se usan esos. Si no, se infiere del contenido.

## Integración con memoria

Antes de cada sesión, se leen las preferencias del usuario desde `memory` y `user`:

- Tono preferido (formal, directo, técnico, vendido, etc.).
- Longitud habitualmente aceptada.
- Palabras o conceptos a evitar (por ejemplo: "AI", "ChatGPT", "algoritmo" si el usuario vende a PYMES locales).
- Contexto de proyectos activos.
- Correcciones previas sobre respuestas largas, sarasa o loops.

Esta información se usa para ajustar:
- El estilo de la síntesis final.
- El vocabulario permitido.
- La profundidad por defecto si no se indica modo.

## Proceso deliberativo

### Fase 0: Preparación
1. Detectar trigger y modo.
2. Seleccionar roles adaptativamente o forzados por flag.
3. Leer preferencias de memoria.
4. Definir reglas de output según modo.

### Fase 1: Análisis individual
Cada rol expone su posición inicial en una sola idea fuerte.
- Máximo 2 o 3 líneas por rol en modo quick.
- Máximo 5 líneas por rol en modo deep.
- Prohibido repetir el enunciado del usuario.

### Fase 2: Ronda de debate
- Cada rol puede rebatir o apoyar a otros.
- El Devil's Advocate debe formular al menos una objeción fuerte.
- El Pragmático debe proponer al menos una acción concreta.
- El Clarificador debe marcar al menos una idea como sarasa y eliminarla.

### Fase 3: Clarificación y eliminación de ruido
- Se listan ideas retenidas, ideas descartadas y por qué.
- Se identifican acuerdos y desacuerdos no resueltos.
- Se reduce todo a lo esencial.

### Fase 4: Síntesis final
- Formato según modo.
- Respuesta directa, sin introducciones innecesarias.
- Si aplica: recomendación, riesgos, próximo paso.

## Reglas anti-sarasa

1. No explicar qué es el consejo durante la respuesta.
2. No usar frases como "es importante notar que", "vale la pena mencionar", "en resumen".
3. No repetir el enunciado original.
4. No agregar disclaimers genéricos salvo que sean legales o de seguridad reales.
5. No justificar cada punto. Solo el punto.
6. Si una idea puede decirse en menos palabras, se dice en menos palabras.
7. Preferir listas, bullets y comandos concretos sobre párrafos.
8. Evitar adjetivos vacíos: "muy", "realmente", "fundamentalmente", "profundamente".

## Ejemplos de uso

### Ejemplo 1: consulta técnica simple
Usuario: "¿Pongo PostgreSQL o SQLite para el prototipo? Respuesta sin sarasa."

Consejo:
- Roles: Analista, Pragmático, Clarificador.
- Modo: --quick implícito.

Respuesta:
- SQLite. Es un prototipo, no necesitas servidor.
- Migrá a PostgreSQL cuando tengas concurrencia real o múltiples escritores.
- Próximo paso: definí el esquema y empezá con SQLite en disco local.

### Ejemplo 2: decisión estratégica
Usuario: "Deliberá --deep: ¿lanzo el producto ahora o espero a tener más features?"

Consejo:
- Roles: Estratega, Pragmático, Devil's Advocate, Inversionista, Clarificador.
- Modo: --deep.

Respuesta:
- Recomendación: lanzá ahora con el MVP mínimo viable.
- Razón: validás demanda real antes de invertir en features que quizás no usen.
- Riesgo: primera impresión pobre si el onboarding falla.
- Mitigación: limitá el acceso a una lista de espera, medí retención semanal.
- Próximo paso: abrí 20 lugares beta esta semana, recopilá feedback, decidí features en 14 días.

### Ejemplo 3: modo ultra
Usuario: "Consejo --ultra: ¿React o Vue para este proyecto?"

Respuesta:
- Vue. Equipo chico, curva rápida, menos sobrecarga cognitiva.
- Si necesitás más librería de componentes madura en 6 meses, reconsiderá React.

### Ejemplo 4: mejora del consejo
Usuario: "mejora el consejo"

Respuesta:
- Se activa el modo de revisión meta. Se analizan los últimos 5-10 usos.
- Se detectan patrones: ¿los roles elegidos fueron útiles? ¿la respuesta fue demasiado larga? ¿el usuario tuvo que pedir más claridad?
- Se proponen ajustes a la skill y se aplican si el usuario confirma.

## Auto-mejora

### Condiciones de activación
- Automáticamente cada 5 a 10 usos.
- Manualmente con el trigger "mejora el consejo" o flag `--mejora`.
- Cuando el usuario corrige la respuesta del consejo de forma repetida.

### Preguntas de revisión meta
1. ¿Los roles seleccionados fueron los adecuados para cada tipo de consulta?
2. ¿La respuesta final respetó el modo solicitado?
3. ¿Hubo sarasa residual que el usuario tuvo que eliminar?
4. ¿La integración con memoria fue útil o generó sesgos?
5. ¿El usuario repitió la pregunta de otra forma? Eso indica que la síntesis no fue clara.
6. ¿Se resolvió el problema real o solo se describió?

### Acciones posibles tras la revisión
- Ajustar la matriz de selección de roles.
- Agregar o quitar palabras del filtro anti-sarasa.
- Modificar la profundidad por defecto de cada modo.
- Crear nuevos roles o consolidar los poco usados.
- Registrar la preferencia del usuario en `memory` si surge un patrón.

## Instalación

1. Copiar este archivo a `~/.hermes/skills/consejo-deliberiante/SKILL.md`.
2. Asegurarse de que Hermes detecte la skill con `hermes skills list` o reiniciando el agente.
3. Para usarla, simplemente incluir un trigger en la consulta.
4. Opcional: personalizar roles, reglas anti-sarasa o modos editando el SKILL.md.

## Extensiones futuras

- Guardar estadísticas de uso localmente para mejorar la selección de roles.
- Integrar `session_search` para recuperar contexto de conversaciones anteriores.
- Soporte para deliberación asíncrona con subagentes.
- Interfaz de votación ponderada entre roles según confianza.

## Nota final

El Consejo DeliberIAnte no existe para lucir inteligente. Existe para que el usuario gane claridad y velocidad. Si alguna respuesta puede reducirse sin pérdida, el consejo falló.

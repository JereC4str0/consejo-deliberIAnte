# Ejemplos de uso v2.0

## Técnico rápido

**Prompt:**
```
consejo: ¿Pongo PostgreSQL o SQLite para el prototipo?
```

**Roles:** Analista, Pragmático, Clarificador.

**Output esperado:**
- SQLite.
- Migrá a PostgreSQL cuando tengas concurrencia real.
- Próximo paso: definí el esquema y arrancá con SQLite local.

## Estratégico profundo

**Prompt:**
```
delibera --deep: ¿lanzo el producto ahora o espero a tener más features?
```

**Roles:** Estratega, Inversionista, Pragmático, Devil, UsuarioFinal, Clarificador.

**Output esperado:**
- Recomendación: lanzá ahora con el MVP mínimo.
- Razón: validás demanda real antes de gastar en features inciertas.
- Riesgo: mala primera impresión si el onboarding falla.
- Mitigación: beta cerrada de 20 usuarios, medir retención semanal.
- Próximo paso: abrí lista de espera hoy, lanzá beta en 7 días.

## Ultra directo

**Prompt:**
```
consejo --ultra: ¿React o Vue?
```

**Output esperado:**
- Vue. Menos sobrecarga cognitiva para equipo chico.
- Reconsiderá React si en 6 meses necesitás ecosistema maduro de componentes.

## Con roles forzados

**Prompt:**
```
delibera --roles analista,devil,pragmatico: ¿refactorizo este módulo legacy?
```

**Output esperado:**
- Sí, si el costo de mantenimiento actual supera el costo de refactorizar.
- No, si no tenés tests de regresión.
- Próximo paso: escribí tests antes de tocar el módulo.

## Personal

**Prompt:**
```
delibera --deep: ¿acepto el trabajo remoto en otro país o me quedo en mi ciudad?
```

**Roles:** Humano, Estratega, Inversionista, Devil, Clarificador.

**Output esperado:**
- Recomendación: aceptá si la oferta duplica o más tu ingreso actual y tiene contrato estable.
- Razón: el diferencial económico te da opciones que no tenés hoy.
- Riesgo: aislamiento, costo emocional, dependencia de un solo empleador.
- Mitigación: negociá revisión a los 6 meses, mantené red local, reservá 3 meses de gastos.
- Próximo paso: pedí la oferta por escrito y calculá costo de vida real en destino.

## Mejora del consejo

**Prompt:**
```
mejora el consejo
```

**Output esperado:**
- Analizando últimos 7 usos.
- Patrón detectado: 4 de 7 consultas fueron técnicas y el usuario usó `--ultra` en 3.
- Propuesta: modo implícito para consultas técnicas cortas pasa a `--quick` con síntesis tipo `--ultra`.
- ¿Aplico el cambio?

## Con contexto

**Prompt:**
```
consejo --contexto: ¿qué priorizo hoy?
```

**Output esperado:**
- Basado en proyectos activos y memoria del usuario.
- Lista priorizada de 3 acciones concretas.
- Próximo paso inmediato.

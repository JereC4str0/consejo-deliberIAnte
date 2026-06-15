# Ejemplos de uso

## Técnico rápido

**Prompt:**
```
consejo: ¿Pongo PostgreSQL o SQLite para el prototipo?
```

**Roles:** Analista, Pragmático, Clarificador.

**Respuesta esperada:**
- SQLite. Es un prototipo, no necesitas servidor.
- Migrá a PostgreSQL cuando tengas concurrencia real o múltiples escritores.
- Próximo paso: definí el esquema y empezá con SQLite en disco local.

## Estratégico profundo

**Prompt:**
```
delibera --deep: ¿lanzo el producto ahora o espero a tener más features?
```

**Roles:** Estratega, Pragmático, Devil's Advocate, Inversionista, Clarificador.

**Respuesta esperada:**
- Recomendación: lanzá ahora con el MVP mínimo viable.
- Razón: validás demanda real antes de invertir en features que quizás no usen.
- Riesgo: primera impresión pobre si el onboarding falla.
- Mitigación: limitá el acceso a una lista de espera, medí retención semanal.
- Próximo paso: abrí 20 lugares beta esta semana, recopilá feedback, decidí features en 14 días.

## Ultra directo

**Prompt:**
```
consejo --ultra: ¿React o Vue para este proyecto?
```

**Respuesta esperada:**
- Vue. Equipo chico, curva rápida, menos sobrecarga cognitiva.
- Si necesitás más librería de componentes madura en 6 meses, reconsiderá React.

## Con roles forzados

**Prompt:**
```
delibera --roles analista,devil,pragmatico: ¿refactorizo este módulo legacy?
```

**Respuesta esperada:**
- Sí, si el costo de mantenimiento actual supera el costo de refactorizar.
- No, si no tenés tests que aseguren que no rompés nada.
- Próximo paso: escribí tests de regresión antes de tocar el módulo.

## Mejora del consejo

**Prompt:**
```
mejora el consejo
```

**Respuesta esperada:**
- Análisis de los últimos usos.
- Patrones detectados.
- Propuestas de ajuste a la skill.

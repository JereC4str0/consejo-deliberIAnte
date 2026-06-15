# Guía de uso del Consejo DeliberIAnte v2.0

## Cómo activarlo

Incluí cualquiera de estos triggers en tu mensaje:

- `consejo`
- `delibera`
- `usa el consejo`
- `modo council`
- `respuesta sin sarasa` / `sin sarasa`
- `pensá como consejo`
- `evolutionary council`
- `consejo evolutivo`
- `modo deliberativo`
- `consulta el consejo`
- `deliberia`
- `delibera ia`
- `mejora el consejo`
- `optimizá el consejo`

## Flags

| Flag | Efecto |
|---|---|
| `--ultra` | Solo síntesis final. Cero proceso visible. |
| `--deep` | 5-7 roles, 2-3 rondas de debate, análisis profundo. |
| `--quick` | 2-3 roles, sin debate, síntesis inmediata. |
| `--roles a,b,c` | Fuerza roles específicos. |
| `--debug` | Muestra roles elegidos, debate, ideas descartadas. |
| `--mejora` | Revisión meta de la skill. |
| `--contexto` | Fuerza lectura de proyectos y preferencias desde memoria. |

## Ejemplos

### Consulta técnica rápida
```
consejo: ¿PostgreSQL o SQLite para el prototipo?
```

### Decisión estratégica profunda
```
delibera --deep: ¿lanzo el producto ahora o espero a tener más features?
```

### Respuesta mínima
```
consejo --ultra: ¿React o Vue?
```

### Forzar roles
```
delibera --roles analista,devil,pragmatico: ¿conviene refactorizar este módulo?
```

### Ver cómo piensa
```
consejo --debug: ¿cuál es el mejor canal de adquisición para este nicho?
```

### Con contexto de memoria
```
consejo --contexto: ¿qué priorizo hoy?
```

### Mejorar el consejo
```
mejora el consejo
```

## Modos por defecto

Si no especificás flag, el consejo infiere el modo según la consulta:

- Corta u operativa → `--quick`
- Compleja, ambigua o de alto impacto → `--deep`

## Salida esperada por modo

### `--ultra`
```
- Veredicto.
- Riesgo clave.
- Próximo paso.
```

### `--quick`
```
[Análisis breve opcional]

- Recomendación.
- Razón.
- Próximo paso.
```

### `--deep`
```
[Análisis de roles]
[Debate cruzado]
[Filtrado de ruido]

- Recomendación.
- Razón.
- Riesgos.
- Mitigación.
- Próximo paso.
```

## Buenas prácticas

- Usá `--ultra` cuando ya conocés el sistema y querés solo el veredicto.
- Usá `--deep` para decisiones que te cuestan dormir.
- Usá `--roles` cuando querés forzar una perspectiva específica.
- Usá `--contexto` cuando la consulta depende de proyectos o preferencias previas.

# Guía de uso del Consejo DeliberIAnte

## Cómo activarlo

Incluí cualquiera de estos triggers en tu mensaje:

- `consejo`
- `delibera`
- `usa el consejo`
- `modo council`
- `respuesta sin sarasa`
- `pensá como consejo`
- `evolutionary council`
- `consejo evolutivo`
- `modo deliberativo`
- `consulta el consejo`
- `deliberia`
- `delibera ia`

## Flags

| Flag | Efecto |
|---|---|
| `--ultra` | Solo respuesta final, cero proceso |
| `--deep` | 5-7 roles, debate completo |
| `--quick` | 3 roles, respuesta rápida |
| `--roles a,b,c` | Fuerza roles específicos |
| `--debug` | Muestra el proceso interno |
| `--mejora` | Revisión meta de la skill |

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

### Mejorar el consejo
```
mejora el consejo
```

## Modos por defecto

Si no especificás flag, el consejo infiere el modo según la longitud y complejidad de la consulta. Las consultas cortas y operativas se resuelven en modo `--quick`. Las consultas estratégicas o ambiguas usan `--deep`.

# Guía de modificación

## Dónde editar

El archivo principal es `SKILL.md`. Cualquier cambio ahí se refleja en Hermes después de reiniciar o recargar skills.

## Cómo agregar un nuevo rol

1. Abrí `SKILL.md`.
2. En la sección `Roles adicionales`, agregá una nueva subsección con:
   - Nombre del rol.
   - Qué hace.
   - Pregunta guía.
3. Actualizá la matriz de selección de roles si el rol aplica a un tipo de consulta frecuente.
4. Copiá el `SKILL.md` actualizado a `~/.hermes/skills/consejo-deliberiante/SKILL.md`.
5. Verificá con `hermes skills list`.

## Cómo cambiar la profundidad de un modo

Buscá la sección `Modos de operación` y ajustá los límites de roles, líneas por rol o si incluye debate.

## Cómo agregar una palabra al filtro anti-sarasa

En la sección `Reglas anti-sarasa`, agregá una nueva regla o ejemplos de frases a evitar. Si la palabra es específica del usuario, considerá guardarla en memoria con `memory` en lugar de hardcodearla.

## Cómo ajustar triggers

Los triggers están en el frontmatter YAML de `SKILL.md`. Agregá o quitá palabras en la lista `triggers`.

## Cómo versionar

1. Actualizá `version` en el frontmatter de `SKILL.md`.
2. Agregá una entrada en `CHANGELOG.md`.
3. Commiteá con un mensaje claro.

## Testing manual

Después de cada cambio, probá la skill con:

```
consejo --debug: tu consulta de prueba
```

Eso te muestra si los roles, modos y reglas se aplican como esperás.

## Buenas prácticas

- No agregues roles por agregar. Cada rol debe tener una función clara.
- Mantené el anti-sarasa. Si una regla genera más ruido, sacala.
- Versioná los cambios importantes.
- Documentá en `CHANGELOG.md`.

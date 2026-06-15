# Guía de modificación v2.0

## Dónde editar

El archivo principal es `SKILL.md`. Cualquier cambio ahí se refleja en Hermes después de recargar skills o reiniciar.

## Cómo agregar un nuevo rol

1. Abrí `SKILL.md`.
2. Agregá el rol en `Roles especializados` con:
   - Nombre.
   - Cuándo aparece.
   - Señales que lo activan.
3. Actualizá las reglas de inclusión en `Selección dinámica de roles`.
4. Copiá el `SKILL.md` actualizado a `~/.hermes/skills/consejo-deliberiante/SKILL.md`.
5. Verificá con `hermes skills list`.

## Cómo cambiar la profundidad de un modo

Buscá la sección `Modos de operación` y ajustá:
- Cantidad de roles.
- Cantidad de rondas de debate.
- Longitud objetivo.

## Cómo agregar palabras al filtro anti-sarasa

En `Reglas anti-sarasa`, agregá frases o adjetivos a las listas correspondientes. Si es específico del usuario, preferí guardarlo en `memory`.

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

- No agregues roles por agregar. Cada rol debe tener una función clara y señales de activación.
- Mantené el anti-sarasa. Si una regla genera más ruido, sacala.
- Actualizá siempre `CHANGELOG.md` y `README.md` si el cambio es visible para el usuario.
- Versioná los cambios importantes.

# Consejo DeliberIAnte

Sistema adaptativo de deliberación multi-rol para respuestas limpias, directas y sin relleno.

Detecta el tipo de consulta, elige los roles más útiles, los hace debatir, elimina el ruido y entrega una respuesta final en el modo que le pidas.

---

## Qué es

Una skill para Hermes Agent que simula una mesa de expertos. A diferencia de los councils clásicos, este no usa siempre los mismos roles. Elige el panel según el problema, aprende de la memoria del usuario y mejora a sí mismo.

## Características

- Adaptativo: selecciona roles según el tipo de consulta.
- Memoria: lee preferencias históricas del usuario desde Hermes memory.
- Auto-mejora: revisión meta cada 5-10 usos o bajo demanda.
- Modos: `--ultra`, `--deep`, `--quick`, `--roles`, `--debug`, `--mejora`.
- Anti-sarasa: respuesta final directa, sin relleno.

## Instalación rápida

```bash
git clone <repo> ~/m0ney/consejo-deliberiante
cp SKILL.md ~/.hermes/skills/consejo-deliberiante/SKILL.md
hermes skills list
```

O usá el script:

```bash
bash scripts/install.sh
```

## Uso

```
consejo: ¿uso PostgreSQL o SQLite para el prototipo?
delibera --deep: ¿lanzo el producto ahora?
respuesta sin sarasa: ¿React o Vue?
pensá como consejo --ultra: prioridad de tareas de hoy
```

Ver `docs/usage.md` para más ejemplos y `docs/modification.md` para adaptar la skill.

## Estructura del repo

```
.
├── SKILL.md                 # Archivo principal de la skill
├── README.md                # Este archivo
├── CHANGELOG.md             # Historial de cambios
├── docs/
│   ├── usage.md             # Guía de uso
│   └── modification.md      # Guía de modificación
├── examples/
│   └── examples.md          # Ejemplos de prompts y respuestas
└── scripts/
    └── install.sh           # Script de instalación
```

## Licencia

MIT. Ver LICENSE.

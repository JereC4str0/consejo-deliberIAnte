<div align="center">

# Consejo DeliberIAnte v2.0

**Sistema deliberativo multi-rol, auto-adaptativo y auto-mejorable para Hermes Agent**

Respuestas limpias, directas, profundas y **sin sarasa**.

[![image.png](https://i.postimg.cc/mDstVD9L/image.png)](https://postimg.cc/VSKfkz4p)

</div>

---

## Qué es

Una skill avanzada para **Hermes Agent** que simula una mesa de expertos auto-seleccionados.

A diferencia de los councils tradicionales (que siempre usan los mismos roles fijos), este es **adaptativo**: elige los roles más útiles según el problema, aprovecha la memoria a largo plazo de Hermes para conocer tus preferencias y mejora a sí mismo con el tiempo.

## Características principales

- **Adaptativo** — Selección dinámica de roles según señales de la consulta (dominio, complejidad, urgencia, tono).
- **Memoria inteligente** — Lee preferencias históricas del usuario desde `memory` y `user` de Hermes antes de responder; guarda aprendizajes después.
- **Auto-mejora continua** — Revisión meta autónoma cada 5-10 usos o bajo demanda (`--mejora`).
- **Múltiples modos** — `--ultra`, `--deep`, `--quick`, `--roles`, `--debug`, `--mejora`, `--contexto`.
- **Anti-sarasa extremo** — Veto absoluto sobre relleno, palabras huecas, metáforas y adjetivos vacíos.
- **Profesional** — Proceso de 4 fases, rondas de debate estructuradas, test de calidad final y salida accionable.
- **Feedback loop** — Aprende de tus correcciones y del contexto de uso.

---

## Instalación rápida

```bash
git clone git@github.com:JereC4str0/consejo-deliberIAnte.git
cd consejo-deliberIAnte
bash scripts/install.sh
hermes skills list
```

O manualmente:

```bash
cp SKILL.md ~/.hermes/skills/consejo-deliberiante/SKILL.md
hermes skills list
```

## Uso

```
consejo: ¿uso PostgreSQL o SQLite para el prototipo?
delibera --deep: ¿lanzo el producto ahora?
respuesta sin sarasa: ¿React o Vue?
pensá como consejo --ultra: prioridad de tareas de hoy
mejora el consejo
```

Ver `docs/usage.md` para más ejemplos y `docs/modification.md` para adaptar la skill.

## Estructura del repo

```
.
├── SKILL.md                 # Archivo principal de la skill
├── README.md                # Este archivo
├── CHANGELOG.md             # Historial de cambios
├── LICENSE                  # Licencia MIT
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

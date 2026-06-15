

<div align="center">

# Consejo DeliberIAnte

**Sistema adaptativo de deliberación multi-rol para Hermes Agent**

Respuestas limpias, directas, profundas y **sin sarasa**.

[![image.png](https://i.postimg.cc/mDstVD9L/image.png)](https://postimg.cc/VSKfkz4p)
</div>

## Qué es

Una skill avanzada para **Hermes Agent** que simula una mesa de expertos reales.  

A diferencia de los councils tradicionales (que siempre usan los mismos roles fijos), este es **adaptativo**: elige los roles más útiles según el problema, aprovecha la memoria a largo plazo de Hermes para conocer tus preferencias y mejora a sí mismo con el tiempo.

---

## Características principales

- **Adaptativo** — Selecciona y combina roles según el tipo de consulta (técnica, estratégica, creativa, personal, etc.)
- **Memoria inteligente** — Lee preferencias históricas del usuario desde la memoria de Hermes
- **Auto-mejora continua** — Revisa y mejora sus propios roles/procesos cada 5-10 usos o bajo demanda (`--mejora`)
- **Múltiples modos** — `--ultra`, `--deep`, `--quick`, `--roles`, `--debug`, `--mejora`
- **Anti-sarasa extremo** — Respuesta final limpia, directa y sin relleno innecesario
- **Feedback loop** — Aprende de tus calificaciones (`+`, `-`, comentarios)

---

## Instalación rápida

```bash
git clone https://github.com/JereC4str0/consejo-deliberIAnte.git

cd consejo-deliberIAnte
bash scripts/install.sh

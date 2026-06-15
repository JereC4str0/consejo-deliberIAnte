#!/usr/bin/env bash
set -e

REPO_DIR="$(cd "$(dirname "$0")/.." && pwd)"
SKILL_NAME="consejo-deliberiante"
SKILL_DIR="$HOME/.hermes/skills/$SKILL_NAME"

echo "Instalando Consejo DeliberIAnte..."

mkdir -p "$SKILL_DIR"
cp "$REPO_DIR/SKILL.md" "$SKILL_DIR/SKILL.md"

echo "Skill copiada a: $SKILL_DIR/SKILL.md"
echo "Verificá con: hermes skills list"

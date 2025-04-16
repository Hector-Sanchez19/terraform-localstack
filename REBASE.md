# REBASE.md

## Tarea 3: Limpieza de commits en Git (Repositorio Terraform)

Con el objetivo de limpiar y clarificar el historial de commits del proyecto de Terraform, se realizó un rebase interactivo sobre los últimos 3 commits.

### Antes del rebase:
1. Commit con mensaje poco claro: `fix cosas`
2. Commit con mensaje poco claro: `más cosas`
3. Commit con mensaje claro: `Commit1`

### Acciones realizadas:
- Se ejecutó el siguiente comando para iniciar el rebase:
  ```bash
  git rebase -i HEAD~3

# Con eso se abrío un editor de texto con lo siguiente:

pick   123abc Commit1 con mensaje claro
squash 456def fix cosas
squash 789ghi más cosas

# Luego edite el mensaje combinado del commit para dejarlo claro.

# Finalmente, se forzó el push al repositorio para actualizar el historial.


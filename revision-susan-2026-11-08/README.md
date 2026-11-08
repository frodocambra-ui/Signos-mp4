# Revisión Susan 2026-11-08

Estado del respaldo: **VERIFICADO_LOCAL_PENDIENTE_DE_REMOTO**.

Los 46 contenidos únicos están en `objects/` y las 59 rutas originales están en `manifest.json`. El tamaño y el SHA-256 de cada objeto ya coinciden con el manifiesto. Esta copia todavía no se llama COMPLETO: falta confirmar el blob git de cada objeto en la rama remota.

Esta carpeta es un respaldo aislado. No sustituye ni modifica la aplicación ni los archivos que ya existían en el repositorio.

## Qué hay en esta carpeta

- `objects/<sha256>.mp4`: un archivo por contenido. El nombre es el SHA-256.
- `manifest.json`: copia fiel del manifiesto recibido. Conserva las 59 rutas, incluidos los duplicados que comparten hash.
- `indice-rutas.md`: índice para abrir cada video por su ruta o por una palabra del nombre, sin memorizar el hash.
- `indice-rutas.tsv`: la misma tabla, fácil de buscar.
- `estado.json`: presentes y faltantes por separado.

## Cómo recuperar una ruta original

1. Busca `relative_path` en `manifest.json` o en `indice-rutas.md`.
2. Lee `sha256` y `bytes`.
3. Copia `objects/<sha256>.mp4` a esa ruta.
4. Comprueba que el tamaño y el SHA-256 del archivo copiado son los del manifiesto.

Si varias rutas tienen el mismo SHA-256, se copian desde el mismo objeto. El mapa completo sigue en el manifiesto: no se ha eliminado ningún nombre.

La fecha `modified_utc` está escrita en el manifiesto. Git guarda el contenido, no esa fecha de modificación.

## Alcance

- No se han subido los ZIP.
- No se ha fusionado esta rama con `main`.
- No se ha borrado nada del repositorio ni de los archivos de origen.
- No se han abierto los videos ni sus fotogramas. La comprobación es de bytes, tamaño y hash.

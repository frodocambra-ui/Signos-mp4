# Catálogo técnico SignoLand — 2026-11-08

Esto es una organización de referencias. **No es una limpieza de vídeos** y **no hay una lista validada**.

Ninguna palabra ni letra se valida aquí en lengua de signos ni en imagen. Las 203 entradas quedan en `pendiente_revision_linguistica_y_visual`. Un contenedor que ffprobe lee no está «bien hecho».

No se han copiado binarios, no se han movido rutas y no se ha borrado nada. Los backups `revision-susan-2026-11-08` y `revision-palabras-separadas-2026-11-08` siguen igual. Esta pasada no determina variante de persona.

## SHA auditado

`main` inventariado: `0036bb5a9bf579e7396778d87a8de092a5960c2d`. La rama, en el momento del inventario: `421af4b745d4e6477583aa418d7c15abab9aea12`. No se ha fusionado ni se ha reescrito historia.

## Duplicados

Un duplicado es el mismo SHA-256. El nombre no une archivos. Si dos rutas se llaman igual y el hash cambia, son dos entradas.

La ruta canónica se elige así, sin copiar el archivo:

1. `videos/lse/` si ese contenido ya está en la ruta de la app.
2. Si no, `revision-palabras-separadas-2026-11-08/`.
3. Si no, el objeto que ya existe en `revision-susan-2026-11-08/objects/`.

## Categorías

Salen de la carpeta y del nombre de archivo, no del significado:

- `letra`: la ruta contiene `/abecedario/`.
- `entero`: el nombre empieza por `entero-`.
- `palabra`: está en `revision-palabras-separadas-2026-11-08/` o en una carpeta `palabras`.
- `desconocido`: el resto.
- `contenido_compartido_entre_categorias`: el mismo hash aparece en reglas distintas.

## Archivos

- `indice.md`: índice con enlace a cada archivo cuyo nombre es el de la ruta.
- `indice.csv`: una fila por contenido.
- `ocurrencias.csv`: una fila por ruta o nombre original.
- `indice.json`: lo mismo, más el detalle técnico y el histórico.
- `recibo.json`: cómo se construyó.

## Histórico

`LISTADO-BIEN-Y-NUEVAS.txt`, `videos/README.md` y `videos/lse-abecedario/README.md` se citan como `historica_no_revalidada`. No actualizan el estado de calidad.

## Conteo

- MP4 en `main` auditado: 29
- MP4 en la rama: 232
- Contenidos únicos: 203
- Letras: 29
- Palabras: 158
- Enteros: 13
- Desconocidos: 3
- Compartidos entre categorías: 0
- Grupos con alias o varias rutas: 37
- Candidatos técnicos: 0
- Validados en esta pasada: 0

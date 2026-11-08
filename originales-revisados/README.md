# Originales revisados

Hay catorce archivos en esta misma carpeta. Trece están limpios y revisados. La aprobación de `boda.mp4` sigue revocada y ese archivo no se ha sustituido. No son finales de Susan, no certifican la LSE y no entran en la app. Wan y Jarvis siguen pendientes.

Cuchillo, vaso, plato llano, tenedor, cucharita de café, servilleta, mesa, silla, plato, jarra, botella, padrino y ramo de flores están sin rótulo. Padrino y ramo sustituyen, en la misma ruta, a la versión que todavía tenía texto. La recodificación no se afirma idéntica píxel a píxel.

## Cocina 854×480

- YouTube: https://www.youtube.com/watch?v=c13pJ9Ikrjw
- Copia local: `entero-c13pJ9Ikrjw-143-801.mp4`
- Tiempos aproximados, con offset 14.3 y sin verificar el timestamp absoluto: cuchillo 41.3–44.7, vaso 55.7–59.2, plato llano 26.4–30.3.
- Contenedor de la versión sin rótulo: 854×480, 30 fps, 3.4 s, 3.5 s y 3.9 s.
- El hash con texto está en `pre_limpieza_hash` y en el commit `d39f93f2e0f7cc638c2602ad2826518fde546878`.

## Cocina 640×360

- Misma fuente: https://www.youtube.com/watch?v=c13pJ9Ikrjw
- Tramos absolutos: tenedor 38–41.25, cucharita de café 51.5–56, servilleta 66.25–70.
- Contenedor medido: 640×360, 24000/1001 fps, 78, 108 y 90 fotogramas.
- La banda de texto ocupaba x=0, y=309, 640×42. En servilleta el rótulo vecino estático era QUE APROVECHE; no cuenta como otro lema.
- El hash previo a la limpieza está en el manifiesto. Ese bruto no se ha subido.

## Cocina, cinco más

- Misma fuente: https://www.youtube.com/watch?v=c13pJ9Ikrjw
- Tramos absolutos: mesa 15–17.3, silla 17.6–20.2, plato 20.5–23, jarra 59.25–62.4, botella 62.5–66.25.
- Recibo `cocina_f7bfff_5`. La revisión `ec135a44` confirmó la limpieza: sin texto y sin manos ni dedos borrados.
- La máscara de plato, y310..350, es la correcta. No se conserva como defecto la advertencia anterior.
- Contenedor medido: 640×360. Mesa, silla, plato y jarra van a 24000/1001, con 56, 63, 60 y 76 fotogramas. Botella dura 3.795 s; ffprobe informa 90 fotogramas y el recibo 91. El hash de botella sí coincide con el recibo.

## Boda

- YouTube: https://www.youtube.com/watch?v=P6ejS-q_xoM
- Copia fuente: descarga de 0 a 95 s, 640×360, 23.976 fps.
- Tiempos de la fuente: boda 13.4–16.8, padrino 28.5–31.5, ramo de flores 67.8–71.8.
- `boda.mp4` (`3b1024204d79e193b32e0a383a4698a90b8339b99d29b4bbf2b289a9e89e9b9b`) sigue en el repositorio, pero su aprobación está revocada. Los fotogramas 0 a 20 son cartela de título, sin persona. La persona empieza en el fotograma 21, en reposo. La revisión anterior tomó el fotograma 0 como reposo. Estado: `pending_intro_trim_and_re_review`. El archivo no se recorta aquí. Una versión posterior en bruto puede estar aprobada, pero todavía no está limpia y no sustituye a este archivo.
- Padrino y ramo de flores ya están en la versión limpia, revisión `c3d4ead9`, máscara 309..350. Conservan los mismos tramos de la fuente. El hash con texto queda en `pre_limpieza_hash`.

## Estados

| Archivo | Recorte | Texto | Wan | Susan final | App |
|---|---|---|---|---|---|
| cuchillo.mp4 | recorte_revisado | limpieza_texto_revisada | pendiente | pendiente | pendiente |
| vaso.mp4 | recorte_revisado | limpieza_texto_revisada | pendiente | pendiente | pendiente |
| platollano.mp4 | recorte_revisado | limpieza_texto_revisada | pendiente | pendiente | pendiente |
| boda.mp4 | pending_intro_trim_and_re_review | pendiente | pendiente | pendiente | pendiente |
| padrino.mp4 | recorte_revisado | limpieza_texto_revisada | pendiente | pendiente | pendiente |
| ramodeflores.mp4 | recorte_revisado | limpieza_texto_revisada | pendiente | pendiente | pendiente |
| tenedor.mp4 | recorte_revisado | limpieza_texto_revisada | pendiente | pendiente | pendiente |
| cucharitadecafe.mp4 | recorte_revisado | limpieza_texto_revisada | pendiente | pendiente | pendiente |
| servilleta.mp4 | recorte_revisado | limpieza_texto_revisada | pendiente | pendiente | pendiente |
| mesa.mp4 | recorte_revisado | limpieza_texto_revisada | pendiente | pendiente | pendiente |
| silla.mp4 | recorte_revisado | limpieza_texto_revisada | pendiente | pendiente | pendiente |
| plato.mp4 | recorte_revisado | limpieza_texto_revisada | pendiente | pendiente | pendiente |
| jarra.mp4 | recorte_revisado | limpieza_texto_revisada | pendiente | pendiente | pendiente |
| botella.mp4 | recorte_revisado | limpieza_texto_revisada | pendiente | pendiente | pendiente |

Los MP4 antiguos de `revision-palabras-separadas-2026-11-08/` siguen intactos. La cucharita antigua se llama `cucharitadecaf.mp4`.

## Foto para Wan

`referencia-wan/susan_frontal.jpeg` no cambia. `referencia-wan/susan.jpeg` sigue siendo la foto de varias poses.

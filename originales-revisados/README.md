# Originales revisados

Hay veinte archivos en esta misma carpeta. Los veinte están limpios y revisados: diecisiete de la fuente de cocina y tres de la de boda. El archivo revocado de boda, hash `3b102420`, queda solo en el historial. No son finales de Susan, no certifican la LSE y no entran en la app. Wan y Jarvis siguen pendientes.

Cuchillo, vaso, plato llano, tenedor, cucharita de café, servilleta, mesa, silla, plato, jarra, botella, padrino, ramo de flores, que aproveche, cuchara y boda están sin rótulo. La recodificación no se afirma idéntica píxel a píxel.

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
- Que aproveche, tramo 70–72.75, recibo `queaproveche_v2`, revisión `5d0a5d3c`. Máscara 310..350. Las filas 351..359 son franja azul del fondo original, sin texto. 66 fotogramas, 640×360, 24000/1001.
- Cuchara, tramo 44.5–47.1, recibo `cuchara_v2`, bruto citado como `0fbb21` y hash `9918a4999ba1987e8d483b76782daefab6f8d2ec366817ce143b9c4d7e7fc451`. Limpieza `ba84b717`. 63 fotogramas, 640×360, 24000/1001. Máscara 310..350.
- Cuenco 22.75–26.75, plato hondo 30.25–34.25, ensaladera 33.75–37.75 y brindis 76.25–80. Recibo `cocina_aptos_2dd3fa`, auditoría `6eed3684`. 96, 96, 96 y 90 fotogramas, 640×360, 24000/1001. Máscara 310..350. Las filas 351..359 son fondo original. Un rechazo anterior no se conserva como defecto.

## Boda

- YouTube: https://www.youtube.com/watch?v=P6ejS-q_xoM
- Copia fuente: descarga de 0 a 95 s, 640×360, 23.976 fps.
- Tiempos de la fuente: boda 13.4–16.8, padrino 28.5–31.5, ramo de flores 67.8–71.8.
- La versión revocada de `boda.mp4`, hash `3b1024204d79e193b32e0a383a4698a90b8339b99d29b4bbf2b289a9e89e9b9b`, tenía cartela en los fotogramas 0 a 20. Sigue en el commit `b990828b86de1bc1aec0ec3c398900713ff04c88` y ya no es el archivo actual.
- La boda actual es la versión limpia, 60 fotogramas, 640×360, 24000/1001. Tramo aproximado 14.275875–16.8. El bruto sin cartela y con texto es `0b576279661140c202dd6628f83838e15023cdce2a80e9d80e98575c4c177465`. Revisión del bruto `c3d4` y limpieza `ba84b717`. Máscara 310..350.
- Padrino y ramo de flores ya están en la versión limpia, revisión `c3d4ead9`, máscara 309..350. Conservan los mismos tramos de la fuente. El hash con texto queda en `pre_limpieza_hash`.

## Estados

| Archivo | Recorte | Texto | Wan | Susan final | App |
|---|---|---|---|---|---|
| cuchillo.mp4 | recorte_revisado | limpieza_texto_revisada | pendiente | pendiente | pendiente |
| vaso.mp4 | recorte_revisado | limpieza_texto_revisada | pendiente | pendiente | pendiente |
| platollano.mp4 | recorte_revisado | limpieza_texto_revisada | pendiente | pendiente | pendiente |
| boda.mp4 | recorte_revisado | limpieza_texto_revisada | pendiente | pendiente | pendiente |
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
| queaproveche.mp4 | recorte_revisado | limpieza_texto_revisada | pendiente | pendiente | pendiente |
| cuchara.mp4 | recorte_revisado | limpieza_texto_revisada | pendiente | pendiente | pendiente |
| bowlcuenco.mp4 | recorte_revisado | limpieza_texto_revisada | pendiente | pendiente | pendiente |
| platohondo.mp4 | recorte_revisado | limpieza_texto_revisada | pendiente | pendiente | pendiente |
| ensaladera.mp4 | recorte_revisado | limpieza_texto_revisada | pendiente | pendiente | pendiente |
| brindis.mp4 | recorte_revisado | limpieza_texto_revisada | pendiente | pendiente | pendiente |

Los MP4 antiguos de `revision-palabras-separadas-2026-11-08/` siguen intactos. La cucharita antigua se llama `cucharitadecaf.mp4`.

## Foto para Wan

`referencia-wan/susan_frontal.jpeg` no cambia. `referencia-wan/susan.jpeg` sigue siendo la foto de varias poses.

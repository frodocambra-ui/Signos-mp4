# Diccionario Susan — explicaciones y puntos del escáner

Textos de **elaboración propia** que describen cómo se hace cada signo de la lengua de signos española (LSE) incluido en el diccionario de SignoLand, junto con las plantillas compactas de puntos del escáner (MediaPipe).

Archivo principal: [`diccionario_susan.json`](diccionario_susan.json) (en la raíz de este repositorio).

## Autoría y uso

- **Autoría:** SignoLand.
- **Uso:** público y libre. Se puede copiar, adaptar, compartir y usar, también con fines comerciales, citando a SignoLand.
- Estos textos **no están copiados** de DILSE (Fundación CNSE), Spread The Sign, Sematos ni de ningún otro diccionario de licencia restringida. La redacción es original, en un lenguaje llano, pensada para quien aprende y para que una IA pueda compararlas con la descripción de un movimiento del escáner.

## Qué hay en `diccionario_susan.json`

Cada entrada de `palabras` trae: palabra, manos, configuración, lugar, movimiento, orientación, expresión (si es relevante), explicación (1–2 frases), confianza y fuente.

El campo `puntos`:

- Es `null` cuando aún no hay corte real escaneado.
- Si hay plantilla, los **puntos van embebidos** en el mismo objeto (no hay que descargar otro archivo):
  - `frames`: `pose`, `mano_izq`, `mano_der` y `blendshapes` (la malla completa de la cara no se incluye; el escáner no la usa en la comparación DTW).
  - Fotogramas reducidos de forma uniforme a un máximo de 24; coordenadas redondeadas a 3 decimales.
  - `n_frames_original`, `fps_original` e `indices_fotogramas` permiten recuperar la cadencia original.
  - `resumen` y `detalle_plantillas` describen manos, inicio, fin y trayectoria.
  - `fuente_plantilla` indica el lote de origen (por ejemplo `cortes/abrir.json` o `swl_lse/aborto.json`); no es una ruta de este repositorio.

La etiqueta `2` se deja como `2`, igual que en el resto del repositorio. El nombre `zapatod-de-tacon` también se conserva tal cual está.

## Fuentes de cada explicación

- **Conocimiento propio** de LSE, redactado por SignoLand.
- **Escáner:** cuando existe plantilla de puntos (MediaPipe) sacada de un **corte de una persona signante real** con veredicto OK, se ha usado para comprobar manos, lugar y trayectoria. No se han usado como plantilla los vídeos de Susan de este repositorio.
- En las palabras que aún no tienen corte real, la descripción se basa en el conocimiento propio y en los vídeos de la propia app. Esas entradas llevan `puntos: null`.

**SignPuddle LSE** (SignBank, licencia [CC BY-SA 3.0](https://creativecommons.org/licenses/by-sa/3.0/)) no se ha consultado en este lote, así que no hay que atribuirle nada aquí.

## Confianza

- **alta:** el signo se ve claro y la descripción es segura.
- **media:** el movimiento se entiende, pero hay duda en la forma exacta de la mano, en un mes o un día concreto, o el signo es compuesto y alguna parte queda menos nítida.
- **baja:** no se ha podido describir con seguridad. En este lote solo ocurre en `asistente` (en el vídeo de la app casi no se ve el signo).

Fecha: 13 de noviembre de 2026 (Europe/Madrid).

## Fuente añadida: SWL-LSE (13-11-2026, Europe/Madrid)

Se ha añadido como **fuente separada** el conjunto [SWL-LSE / SignaMed](https://zenodo.org/records/13691887) de la Universidade de Vigo, licencia [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/). Hay que citar: SWL-LSE (SignaMed Word-Level LSE), Universidade de Vigo, CC BY 4.0, DOI [10.5281/zenodo.13691887](https://doi.org/10.5281/zenodo.13691887).

- Las palabras nuevas llevan `source: "swl_lse"` y sus puntos embebidos en `puntos`.
- Las palabras que ya estaban en el diccionario no se han reescrito: sus puntos SWL-LSE van en `puntos_swl_lse`.
- Las explicaciones son propias. No se ha copiado DILSE.

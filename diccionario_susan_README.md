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
  - `fuente_plantilla` indica el lote de origen (por ejemplo `cortes/abrir.json`); no es una ruta de este repositorio.

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

## Fuente añadida: cursos de YouTube, saludos (13-11-2026, Europe/Madrid)

Se han añadido plantillas de puntos (MediaPipe Holistic) de **signantes reales**, no de Susan, sacadas de signos aislados de cursos públicos de YouTube. Sirven como referencias extra del escáner, para que la app pueda reconocer saludos que antes no tenían puntos (`hola`, `gracias`, `perdón`, `por-favor`, etc.).

Las plantillas nuevas de una palabra que ya tenía puntos no sustituyen a las existentes: van en `puntos_adicionales` (lista). Si la palabra no tenía puntos, la plantilla principal queda en `puntos` (para que el formato siga siendo compatible) y el resto, si hay, en `puntos_adicionales`.

**No se ha usado Spread The Sign ni DILSE.**

### Aprender Gratis — Tema 10, saludos y conversación

- Vídeo: [Curso LENGUA de SIGNOS / Saludos y conversación en LSE / Tema 10](https://www.youtube.com/watch?v=w1vRaGuo328), canal Aprender Gratis.
- Lista: https://www.youtube.com/playlist?list=PL3t1u6bsUXuIv1nJfQcEMLCNCAcd8RZZW
- Licencia: licencia estándar de YouTube.
- Signante: mujer. Los cortes se identificaron con los subtítulos manuales, la narración y las pausas del movimiento.

### EFIAP Región de Murcia — 01 Saludar y despedirse

- Vídeo: [01 Saludar y despedirse](https://www.youtube.com/watch?v=P2VPCEjGHBU), lista [A1 Lengua de Signos Española Básico](https://www.youtube.com/playlist?list=PLxCZtp6Ou7i1u_ed53oQRcOrlaSkuyUhr).
- Autor: Cristobal López López / Escuela de Formación e Innovación de la Administración Pública de la Región de Murcia.
- Licencia: [CC BY-NC-SA 3.0 ES](https://creativecommons.org/licenses/by-nc-sa/3.0/es/). Hay que citar al autor. **Uso no comercial y ShareAlike**: estas plantillas (`source: "efiapp_murcia"`) no se pueden usar con fines comerciales y las obras derivadas deben llevar la misma licencia. No se han puesto como `puntos` principales de ninguna palabra, solo en `puntos_adicionales`.

### Clases Lengua de signos ES — Conversación básica

- Vídeo: [Conversación básica](https://www.youtube.com/watch?v=ZQuGtA1pDFg), canal Clases Lengua de signos ES.
- Licencia: licencia estándar de YouTube.
- Signante: mujer. Los cortes se identificaron con la etiqueta de cada signo en pantalla (por ejemplo «POR FAVOR», «¡HOLA!», «PERDÓN»).

### Palabras cubiertas en este lote

`hola`, `qué-tal`, `bien`, `mal`, `regular`, `buenos-días`, `buenas-tardes`, `buenas-noches`, `adiós`, `gracias`, `de-nada`, `perdón`, `por-favor`. Las que no tenían puntos ahora tienen plantilla en `puntos`. `mal` y `regular` ya tenían puntos; se han añadido referencias extra.

## Fuente añadida: vídeos de Susan (14-11-2026, Europe/Madrid)

Se han añadido plantillas MediaPipe Holistic (manos, pose, blendshapes y **cara**) extraídas de los vídeos propios de Susan en `videos/lse/palabras`. Sirven para que el escáner reconozca palabras que se habían quedado sin puntos al quitar los datos de SWL-LSE (Vigo).

Reglas:

- Si la palabra **no tenía** puntos, la plantilla de Susan queda en `puntos` (compatible con la app actual, que ya lee `pose`, `mano_izq` y `mano_der`).
- Si la palabra **ya tenía** puntos de un signante real, esos no se tocan: la de Susan va en `puntos_adicionales`.
- El campo nuevo `frames.cara` tiene 89 puntos clave de Face Mesh (cejas, ojos, nariz, boca, contorno). La app actual puede ignorarlo sin romperse.
- **No se ha usado SWL-LSE (Vigo), Spread The Sign ni DILSE.**

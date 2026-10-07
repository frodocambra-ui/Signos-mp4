# Frases comunes en LSE

Vídeos de frases completas para SignoLand. Cada frase está montada **uniendo, uno detrás de otro, los vídeos de Susana que ya están en [`videos/`](../videos/)**. No hay signos nuevos ni inventados: son sus mismos vídeos, a velocidad normal (1x), en 1280×720, sin audio.

Las palabras van en **orden LSE** (normalmente el verbo al final), no en el orden del castellano.

| Archivo | Frase | Palabras (vídeos de Susana) |
|---|---|---|
| `hola-que-tal.mp4` | «Hola, ¿qué tal?» | HOLA + QUÉ TAL |
| `encantada-de-conocerte.mp4` | «Encantada de conocerte» | CONOCER + ENCANTADA |
| `que-tal-el-fin-de-semana.mp4` | «¿Qué tal el fin de semana?» | FIN DE SEMANA + QUÉ TAL |
| `no-entiendo-repite-por-favor.mp4` | «No entiendo, repite por favor» | NO ENTIENDO + REPITE + POR FAVOR |
| `mas-despacio-por-favor.mp4` | «Más despacio, por favor» | MÁS DESPACIO + POR FAVOR |
| `otra-vez-por-favor.mp4` | «Otra vez, por favor» | OTRA VEZ + POR FAVOR |
| `escribelo-por-favor.mp4` | «Escríbelo, por favor» | ESCRIBIR + POR FAVOR |
| `ayuda-por-favor.mp4` | «Ayuda, por favor» | AYUDA + POR FAVOR |
| `llama-al-medico-por-favor.mp4` | «Llama al médico, por favor» | MÉDICO + LLAMAR + POR FAVOR |
| `quiero-ir-al-hospital.mp4` | «Quiero ir al hospital» | HOSPITAL + IR + QUERER |
| `busco-una-farmacia.mp4` | «Busco una farmacia» | FARMACIA + BUSCAR |
| `estoy-enfermo-tengo-fiebre.mp4` | «Estoy enfermo, tengo fiebre» | ENFERMO + FIEBRE |
| `quiero-ir-al-bano.mp4` | «Quiero ir al baño» | BAÑO + IR + QUERER |
| `quiero-agua-por-favor.mp4` | «Quiero agua, por favor» | AGUA + QUERER + POR FAVOR |
| `estoy-cansado-quiero-dormir.mp4` | «Estoy cansado, quiero dormir» | CANSADO + DORMIR + QUERER |
| `voy-a-trabajar.mp4` | «Voy a trabajar» | TRABAJAR + IR |
| `mandame-un-whatsapp.mp4` | «Mándame un WhatsApp» | WHATSAPP + ENVIAR |
| `avisa-a-la-familia.mp4` | «Avisa a la familia» | FAMILIA + AVISAR |
| `llama-por-telefono.mp4` | «Llama por teléfono» | TELÉFONO + LLAMAR |

## Cómo se montan

- La lista de frases está en [`frases.txt`](frases.txt) (`nombre-del-archivo: palabra1, palabra2, ...`).
- El script [`montar-frases.sh`](montar-frases.sh) une los vídeos con ffmpeg (H.264, sin audio, preparado para móvil y web).
- Cada vez que se cambia `frases.txt`, GitHub vuelve a montar los vídeos solo (acción «Montar frases con los vídeos de Susana»). También se puede lanzar a mano desde la pestaña **Actions**.
- Para añadir una frase nueva basta con añadir una línea a `frases.txt` usando palabras que ya tengan vídeo en `videos/`.

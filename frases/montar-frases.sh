#!/usr/bin/env bash
# Une los vídeos de videos/ para crear cada frase de frases/frases.txt.
# No genera signos nuevos: solo pone seguidos los vídeos de Susana, a velocidad normal (1x).
set -euo pipefail
cd "$(dirname "$0")/.."
fallos=0
while IFS= read -r linea || [ -n "$linea" ]; do
  linea="${linea%%#*}"
  [ -z "${linea//[[:space:]]/}" ] && continue
  salida="$(echo "${linea%%:*}" | xargs)"
  palabras="$(echo "${linea#*:}" | tr ',' ' ')"
  args=(); filtro=""; i=0; falta=""
  for p in $palabras; do
    if [ ! -f "videos/$p.mp4" ]; then falta="$falta $p"; continue; fi
    args+=(-i "videos/$p.mp4")
    filtro+="[$i:v:0]setpts=PTS-STARTPTS,fps=24,scale=1280:720,format=yuv420p[v$i];"
    i=$((i+1))
  done
  if [ -n "$falta" ]; then echo "SALTADA $salida: faltan vídeos:$falta"; fallos=$((fallos+1)); continue; fi
  for ((j=0;j<i;j++)); do filtro+="[v$j]"; done
  filtro+="concat=n=$i:v=1:a=0[out]"
  ffmpeg -nostdin -v error -y "${args[@]}" -filter_complex "$filtro" -map "[out]" \
    -c:v libx264 -preset slow -crf 23 -pix_fmt yuv420p -r 24 -threads 1 -movflags +faststart -an \
    "frases/$salida.mp4"
  echo "OK frases/$salida.mp4 ($i vídeos, $(ffprobe -v error -show_entries format=duration -of csv=p=0 "frases/$salida.mp4") s)"
done < frases/frases.txt
echo "Frases con fallos: $fallos"

#!/usr/bin/env python3
"""Regenera indexes/palabras.json a partir de los vídeos de Nelson y LSE."""
from pathlib import Path
import json


def names(folder: Path) -> list[str]:
    if not folder.is_dir():
        return []
    return sorted(
        (p.stem for p in folder.iterdir() if p.is_file() and p.suffix.lower() == '.mp4'),
        key=str.lower,
    )


root = Path('videos')
data = {
    'nelson': names(root / 'nelson' / 'palabras'),
    'lse': names(root / 'lse' / 'palabras'),
}
out = Path('indexes/palabras.json')
out.parent.mkdir(parents=True, exist_ok=True)
out.write_text(json.dumps(data, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
print(f"nelson={len(data['nelson'])} lse={len(data['lse'])} -> {out}")

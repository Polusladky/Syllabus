#!/usr/bin/env python3
"""Проверка собранного APK: размер, SHA-256, состав, подпись.

    python tools/apk_report.py dist/okei-schedule-v20.2.apk
    python tools/apk_report.py new.apk --compare dist/okei-schedule-v20.2.apk

Сравнение показывает, какие записи отличаются от эталона (побайтово, по SHA-256).
Только стандартная библиотека, Python 3.8+.
"""

import argparse
import hashlib
import sys
import zipfile
from pathlib import Path

# на Windows консоль по умолчанию в cp866 — принудительно UTF-8
try:
    sys.stdout.reconfigure(encoding="utf-8")
except AttributeError:
    pass


def sha256(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def entries(path: Path) -> dict:
    result = {}
    with zipfile.ZipFile(path) as apk:
        for info in apk.infolist():
            result[info.filename] = sha256(apk.read(info.filename))
    return result


def report(path: Path) -> dict:
    data = path.read_bytes()
    hashes = entries(path)
    print(f"APK:      {path}")
    print(f"Размер:   {len(data)} байт")
    print(f"SHA-256:  {sha256(data)}")
    print(f"Записей:  {len(hashes)}")

    dex = [name for name in hashes if name.endswith(".dex")]
    signed = any(name.startswith("META-INF/") and name.endswith((".RSA", ".DSA", ".EC"))
                 for name in hashes)
    print(f"DEX:      {', '.join(sorted(dex)) or 'нет'}")
    print(f"Подпись:  {'есть' if signed else 'нет'}")
    return hashes


def main() -> int:
    parser = argparse.ArgumentParser(description="Отчёт по собранному APK")
    parser.add_argument("apk", type=Path, help="путь к APK")
    parser.add_argument("--compare", type=Path, help="эталонный APK для сравнения")
    args = parser.parse_args()

    if not args.apk.exists():
        print(f"нет файла: {args.apk}", file=sys.stderr)
        return 1

    hashes = report(args.apk)

    if args.compare:
        if not args.compare.exists():
            print(f"нет эталона: {args.compare}", file=sys.stderr)
            return 1
        other = entries(args.compare)
        print(f"\nСравнение с {args.compare}")
        only_here = sorted(set(hashes) - set(other))
        only_there = sorted(set(other) - set(hashes))
        changed = sorted(name for name in hashes if name in other and hashes[name] != other[name])

        print(f"  только здесь: {len(only_here)}")
        for name in only_here[:10]:
            print(f"    + {name}")
        print(f"  только в эталоне: {len(only_there)}")
        for name in only_there[:10]:
            print(f"    - {name}")
        print(f"  отличаются: {len(changed)}")
        for name in changed[:10]:
            print(f"    ~ {name}")

        if not only_here and not only_there and not changed:
            print("  содержимое совпадает полностью")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())

# MCCMD-ROM
動的なアドレス(0-65535)を元に専用のデータ領域を提供するライブラリ  
このライブラリは[OhMyDat](https://github.com/Ai-Akaishi/OhMyDat)を元に作られたライブラリです。

対応バージョン: **1.18~**

---
## DL
[こちら](https://github.com/ChenCMD/MCCMD-ROM/releases/latest/download/MCCMD-ROM.zip)をDLしてください

## 依存ライブラリ
無し

## 使い方
1. `storage rom: Argument.Address`に`int`型でアドレスを代入する
2. `function rom:api/please`を呼び出す
3. `storage _[-4][-4][-4][-4][-4][-4][-4][-4]`に該当アドレスのデータ領域が提供されている。

## 要注意事項

## 既知のバグ
無し

## 推奨利用環境
[Data-pack Helper Plus](https://github.com/SPGoding/datapack-language-server)(通称DHP)を導入した[VSCode](https://azure.microsoft.com/ja-jp/products/visual-studio-code/)での使用
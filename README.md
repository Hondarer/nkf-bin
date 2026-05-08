# nkf-bin

---

Compiled nkf from [nkf](https://github.com/nurse/nkf)

This repository packages Windows builds of `nkf` from the upstream
[nurse/nkf](https://github.com/nurse/nkf) source repository.

When a tag is added to this repository, CI downloads the upstream source ZIP
for the same tag name, builds `nkf.exe`, generates `LICENSE` from
`man/nkf.1.pm`, verifies that the executable does not require MSYS/MinGW DLLs,
and publishes a ZIP containing `nkf.exe` and `LICENSE` to the corresponding
GitHub Release when one exists.

---

[nurse/nkf](https://github.com/nurse/nkf) をもとにビルドした `nkf` を配布するリポジトリです。

このリポジトリでは、upstream の [nurse/nkf](https://github.com/nurse/nkf)
ソースリポジトリから Windows 向けの `nkf` ビルドを作成して配布します。

このリポジトリにタグを追加すると、CI は同じタグ名の upstream ソース ZIP を
取得して `nkf.exe` をビルドし、`man/nkf.1.pm` から `LICENSE` を生成します。
その実行ファイルが MSYS / MinGW の DLL に依存しないことを確認したうえで、
対応する GitHub Release が存在する場合は、`nkf.exe` と `LICENSE` を含む ZIP
をその Release に公開します。

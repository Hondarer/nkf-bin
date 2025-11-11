# nkf-bin

Compiled nkf from [nkf](https://github.com/nurse/nkf)

## mingw64 でのコンパイル

### 作業の流れ

1. MSYS2 をインストールする
2. 必要なツールを導入する
3. nkf のソースを取得してビルドする
4. 動作確認する

### 手順

#### MSYS2 のインストール

[MSYS2 公式サイト](https://www.msys2.org/) から最新のインストーラーをダウンロードして実行します。

インストール先はデフォルトの `C:\msys64` を推奨します。

#### ビルドツールの導入

MSYS2 ターミナル (MSYS2 MINGW64) を起動して、以下のコマンドを実行します。

```{.bash caption="MSYS2 MINGW64"}
pacman -Syu
pacman -S mingw-w64-x86_64-gcc make git
```

1 回目の `pacman -Syu` でターミナルが閉じた場合は、再度起動して同じコマンドを実行します。

#### nkf のビルド

```{.bash caption="MSYS2 MINGW64"}
cd ~
git clone https://github.com/nurse/nkf.git
cd nkf
make
```

ビルドが完了すると `nkf.exe` が生成されます。

#### 動作確認

nkf が動作することを確認します。

```{.bash caption="Git Bash"}
nkf --version
```

## License

Copyright (c) 1987, Fujitsu LTD. (Itaru ICHIKAWA).  
Copyright (c) 1996-2018, The nkf Project.

This software is provided 'as-is', without any express or implied  
warranty. In no event will the authors be held liable for any damages  
arising from the use of this software.

Permission is granted to anyone to use this software for any purpose,  
including commercial applications, and to alter it and redistribute it  
freely, subject to the following restrictions:

1. The origin of this software must not be misrepresented; you must not  
   claim that you wrote the original software. If you use this software  
   in a product, an acknowledgment in the product documentation would be  
   appreciated but is not required.

2. Altered source versions must be plainly marked as such, and must not be  
   misrepresented as being the original software.

3. This notice may not be removed or altered from any source distribution.

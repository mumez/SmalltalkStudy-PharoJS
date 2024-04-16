# SmalltalkStudy-PharoJS

Smalltalk 勉強会のための PharoJS を使ったサンプルコードです。

## インストール

```Smalltalk

Metacello new
	baseline: 'StStudyPharoJS';
	repository: 'github://mumez/https://github.com/mumez/SmalltalkStudy-PharoJS';
	load

```

別途 Pharo の イメージが置かれたディレクトリに html 以下をコピーする必要があります。

プレゼンにもありますが、現状の PharoJS では、Windows で Node.js 用のアプリをトランスパイルする際にエラーが出ます。
patch 以下に修正用の.st ファイルがあるので必要に応じてファイルインしてください。

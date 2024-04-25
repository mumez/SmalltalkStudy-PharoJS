# SmalltalkStudy-PharoJS

Smalltalk 勉強会のための PharoJS を使ったサンプルコードです。

## インストール

```Smalltalk
Metacello new
	baseline: 'StStudyPharoJS';
	repository: 'github://mumez/SmalltalkStudy-PharoJS';
	load
```

別途 Pharo の イメージが置かれたディレクトリに [html](./html) 以下をコピーする必要があります。

プレゼン資料の[PharoJSで作るWebアプリケーション](https://docs.google.com/presentation/d/1zq9BTuHRa1IbF8ojQlnvucX0ManqUG8fTOtIRgSh2bo/edit?usp=sharing) にもありますが、現状の PharoJS では、Windows で Node.js 用のアプリをトランスパイルする際にエラーが出ます。
[patch](./patch) 以下に修正用の.st ファイルがあるので必要に応じてファイルインしてください。

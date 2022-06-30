# Qr

文字列を変換して、ターミナルに QR コードを表示する。

## 使い方

### ビルド

escript のビルドコマンドを利用して、実行ファイル `qr` を生成します。

```
mix escript.build
```

インストールする場合は Mix の `escript.install` コマンドを利用します。

```
mix escript.install
```

同様にアンインストールには `escript.uninstall` コマンドを利用します。

```
mix escript.uninstall
```

### 実行

QR コードに変換したい文字列をパラメータに渡します。


```
qr Hello
```

複数の文字列をパラメータにすると、それぞれの文字列をそれぞれ個別の QR コードに変換します。

```
qr Hello Goodbye
```

空白を含む文字列や、シェルで意味を持つ文字を含む文字列の場合は、引用符で囲みます。

```
qr 'Hello Goodbye'
```

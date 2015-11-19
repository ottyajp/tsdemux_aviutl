#なにこれ
tsの処理がなんだか面倒なので多少自動化できる部分を自動化したろうってだけ
自己満足ダ！

##やってくれる事
1. m2v+wavにDemux
2. aviutlに読み込む
3. aviutlが終了したら次のファイル（次の引数）を処理する
4. あと繰り返し

##使い方
1. batを用意します
2. aviutlを用意します（`aui_indexer`が対応している環境）
3. `auc`を用意します
4. `aui_indexer`を用意します
5. batにそれぞれのパスを設定します
```
set AUC_DIR="C:\path\to\auc"
set AVU_DIR="C:\path\to\aviutlxxx"
set AUI_INDEXER_DIR="C:\path\to\aui_indexer_0.03"
set AUI_DIR="C:\path\to\lwinput.aui"
```
6. あとはtsファイルをD&Dします

##今後やりたい事
- demuxに時間かかるのでaviutlでの操作を始めるタイミングが微妙
- という訳で、demuxを先にまとめてやる or D&Dされたtsと同名のm2v+wavがあればdemuxやらない、みたいにする

###これさぁ…
リポジトリ作るほどのものじゃない気がするけど……まぁいっか
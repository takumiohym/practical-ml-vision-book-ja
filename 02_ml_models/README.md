# 2章: コンピュータビジョンのための機械学習モデル

## 実行環境
本章のノートブックは、**GPU**での実行を想定しています。<br>

Vertex AI Workbench （推奨）やColabなどの環境でGPUを利用可能にした上で実行してください。

設定方法は[実行環境のセットアップ](https://github.com/takumiohym/practical-ml-vision-book-ja/tree/main/environment_setup)を確認ください。

## TIPS
学習データは、`us-central1`リージョン（米国中部）のGoogle Cloud Storageに置かれています。

Vertex AI Workbenchのインスタンスを作成する際は、このリージョン内のゾーンを指定すると最も高速です。<br>
Colabでは、実行環境のサーバの場所を指定することはできませんので、場合によっては学習に非常に時間がかかることがあります。

# 第9章: モデルによる推論
本章では、学習後のモデルを推論で使用する様々な方法を確認します。

## 実行環境
本章のノートブックではアクセレレータは使用しません。Vertex AI、Colabのどちらでも動作しますが、デプロイ先の環境としてGoogle CloudのVertex AIを利用します。

Vertex AI Workbench、Colabの利用方法は、[実行環境のセットアップ](https://github.com/takumiohym/practical-ml-vision-book-ja/tree/main/environment_setup)の手順を確認ください。

デプロイに使用するモデルは第７章で学習したものを利用しますが、ここではパブリックの `gs://asl-public/practical-ml-vision-book/flowers_5_trained`を利用しますので、独立して実行することができます。

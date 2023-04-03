# 第3章: イメージビジョン
本章では、様々な画像分類モデルを利用して学習やファインチューニングを行います。

## TIPS
本章のノートブックは、モデル以外はほとんど同じ手順をたどります。<br>
実際の実行には時間やコストがかかるため、どれか一つのモデル（比較的軽量な[03k_finetune_MOBILENETV2_flowers104.ipynb](https://github.com/takumiohym/practical-ml-vision-book-ja/blob/main/03_image_models/03k_finetune_MOBILENETV2_flowers104.ipynb)などがおすすめです。こちらはColab のTPU v2、GPUでも動作します。）のみを実行し、他はモデルと出力されている結果とを比較するだけにすると効率的です。

## 実行環境
大規模なモデルを利用するため、Vertex AI Workbenchでの**TPU v3**での実行を想定して実装されています。<br>
GPUや、Colabから利用できるTPU v2でも動作しますが、実行に時間がかかるほか、モデルによってはメモリ不足による`ResourceExhaustedError`が発生するものがあります。<br>
その際は、ノートブック内で定義されているいくつかのパラメータを変更して実行することで対応してください。（詳細は各ノートブックを参照してください）

Vertex AI WorkbenchでTPU v3を利用する際は[こちら](https://github.com/takumiohym/practical-ml-vision-book-ja/blob/main/environment_setup/vertex_ai_workbench.md#tpu-%E7%92%B0%E5%A2%83%E3%82%92%E5%88%A9%E7%94%A8%E3%81%99%E3%82%8B%E5%A0%B4%E5%90%88)の手順を参照の上、[TPU使用料金](https://cloud.google.com/tpu/pricing)に注意して行ってください。

その他の環境を利用する場合は、[実行環境のセットアップ](https://github.com/takumiohym/practical-ml-vision-book-ja/tree/main/environment_setup)の手順を確認ください。


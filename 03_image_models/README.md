# 2章: Image Vision

## 実行環境
本章では、様々な画像分類モデルを利用して学習やファインチューニングを行います。

大規模なモデルを利用するため、Vertex AI Workbenchでの**TPU v3**での実行を想定しています。<br>
GPUや、Colabから利用できるTPU v2でも動作しますが、実行に時間がかかるほか、メモリ不足による`ResourceExhaustedError`が出る場合があります。<br>
その際は、ノートブック内で定義されているいくつかのパラメータを変更して実行することで対応してください。（詳細は各ノートブックを参照してください）



Vertex AI Workbench にやColabなどの環境でGPUを利用可能にした上で実行してください。

設定方法は[実行環境のセットアップ](https://github.com/takumiohym/practical-ml-vision-book-ja/tree/main/environment_setup)を確認ください。

## TIPS
GPUを利用した場合でも実行には時間がかかります。<br>
短い時間で確認したい場合は、エポック数を小さくするなどして対応してください。

また、実行済みのセルはすべて出力されていますので、実行せずにコードと結果の確認のみを行うこともできます。

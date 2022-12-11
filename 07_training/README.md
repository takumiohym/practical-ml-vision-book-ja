# 第6章: 前処理
本章では、データの読み込みとデータセットの作成について確認します。

## 実行環境
TPUまたはGPUのどちらでも動作します。
Vertex AI Workbench、Colabの利用方法は、[実行環境のセットアップ](https://github.com/takumiohym/practical-ml-vision-book-ja/tree/main/environment_setup)の手順を確認ください。

`07a_ingest.ipynb`と`07b_gpumax.ipynb`では実行速度を計測していますが、数値は`us-central`に配置したVertex AI Workbench n1-standard-4インスタンスにNVIDIA T4 GPUをアタッチした環境で計測されています。

**注: Colabを利用した場合、実行環境のロケーションを選択することができません。そのため、データが置かれているロケーション (`us-central1`)と遠くなり、ネットワークのオーバーヘッドの方が大きくなる可能性があります。正確な比較を行いたい場合、Vertex AI Workbenchでロケーションを`us-central1`に指定してインスタンスを作成し、実行するようにしてください。**

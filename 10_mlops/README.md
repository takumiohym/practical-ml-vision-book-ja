# 第10章: 本番環境における機械学習のトレンド
本章では、Vertex AI Pipelinesを利用したMLOPsパイプラインの構築、Explainable AIについて紹介します。

## 実行環境
- `10a_mlpipeline.ipynb`
  - ColabではDockerが利用できないため実行できません。このノートブックはVertex AI Workbenchで実行してください。
  - GPU、TPU等のアクセレレータは必要ありません。
- `10b_explain.ipynb`
  - Vertex AI、Colabのどちらでも動作します。デプロイ先の環境としてはGoogle CloudのVertex AIを利用します。
  - GPU、TPU等のアクセレレータは必要ありません。

Vertex AI Workbench、Colabの利用方法は、[実行環境のセットアップ](https://github.com/takumiohym/practical-ml-vision-book-ja/tree/main/environment_setup)の手順を確認ください。


## TIPS
- `10a_mlpipeline.ipynb`
  - パイプライン作成のためには、このノートブック以外にも、レポジトリ内の様々なファイルを利用します。適宜以下のファイルも参照してください。
    - [../build_docker_image.sh](https://github.com/takumiohym/practical-ml-vision-book-ja/blob/main/build_docker_image.sh): Dockerイメージの作成に使用。
    - [../Dockerfile](https://github.com/takumiohym/practical-ml-vision-book-ja/blob/main/Dockerfile): イメージのDockerfile。本レポジトリのファイルをコピーしています。
    - [create_dataset.yaml](https://github.com/takumiohym/practical-ml-vision-book-ja/blob/main/10_mlops/components/create_dataset.yaml): デートセット作成コンポーネントの定義ファイル。
    - [components/create_dataset.sh](https://github.com/takumiohym/practical-ml-vision-book-ja/blob/main/10_mlops/components/create_dataset.sh): デートセット作成コンポーネントから呼び出されるコマンド
    - [../05_create_dataset/jpeg_to_tfrecord.py](https://github.com/takumiohym/practical-ml-vision-book-ja/blob/main/05_create_dataset/jpeg_to_tfrecord.py): デートセット作成コンポーネントが実際に使用するApache Beamパイプライン定義が記載されたファイル。５章で使用したものです。
  - パイプラインの実行には、サーバレスのVertex AI Pipelinesを利用します。
- `10b_explain.ipynb`
  - 説明性を得るためのモデルには、7章で使用したモデルを使用します。ここではパブリックの `gs://practical-ml-vision-book/flowers_5_trained`バケットに保存されているファイルを利用しますので、独立して実行することができます。

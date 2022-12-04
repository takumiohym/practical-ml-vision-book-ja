# 環境の設定

本レポジトリでは、第3章を除いてGPU環境での実行を想定しています。

大規模なモデルを扱う第3章のみTPU環境での実行を前提にしています。（GPU上での実行も可能ですが、実行には時間がかかります。またメモリに応じてバッチサイズを小さくするなどの変更をする必要があります。）

詳しくは各章の`README.md`を参照してください。

以下に、Google Cloud のノートブック実行環境 Vertex AI Workbenchと、Google Colaboratory での設定方法を記載します。

## 環境のセットアップ方法
- [Vertex AI Workbench を利用する場合](vertex_ai_workbench.md)
- [Google Colaboratory を利用する場合](google_colab.md)

## 注意点
**注: Vertex AI Workbenchでは、インスタンスやGPU/TPUの利用に関して費用がかかりますので、事前に料金を確認した上で利用してください。生じた費用について本書では責任を負いません。**

- [Vertex AI Workbench 料金](https://cloud.google.com/vertex-ai/pricing#user-managed-notebooks)
- [使用するインスタンスやGPUに関する料金](https://cloud.google.com/compute/all-pricing)
- [Google Cloud Price Calculator](https://cloud.google.com/products/calculator)

**また、Colaboratoryの通常の利用は無料ですが、優先的により高性能なGPUリソースにアクセスできる等のメリットがある有料プランが用意されています。 本書で扱うモデルの学習には時間がかかるものもありますので、可能であれば有料プランの利用を検討してください。**
- [Google Colaboratory Plans](https://colab.research.google.com/signup) 



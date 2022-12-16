# 実行環境のセットアップ

本レポジトリ内のほとんどのノートブックでは、GPUやTPUなどのアクセレレータを利用した実行を想定しています。

ノートブック毎に推奨環境は異なりますので、詳しくは各章の`README.md`やノートブック内の記載を参照してください。

## 環境のセットアップ方法
以下に、Google Cloud のノートブック実行環境 Vertex AI Workbenchと、Google Colaboratory での環境のセットアップ方法を記載します。
- [Vertex AI Workbench を利用する場合](vertex_ai_workbench.md)
- [Google Colaboratory を利用する場合](google_colab.md)

## 注意点
**注: Vertex AI Workbenchでは、インスタンスやGPU/TPUの利用に関して費用がかかりますので、事前に料金を確認した上で利用してください。生じた費用について本書では責任を負いません。**

- [Vertex AI Workbench 料金](https://cloud.google.com/vertex-ai/pricing#user-managed-notebooks)
- [使用するインスタンスやGPUに関する料金](https://cloud.google.com/compute/all-pricing)
- [Google Cloud Price Calculator](https://cloud.google.com/products/calculator)

**また、Colaboratoryの通常の利用は無料ですが、優先的により高性能なGPUリソースにアクセスできる等のメリットがある有料プランが用意されています。 本書で扱うモデルの学習には時間がかかるものもありますので、可能であれば有料プランの利用を検討してください。**
- [Google Colaboratory Plans](https://colab.research.google.com/signup) 

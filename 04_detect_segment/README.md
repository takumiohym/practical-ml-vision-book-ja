# 第4章: 物体検出と画像セグメンテーション
本章では、RetinaNetを利用した物体検出と、U-Netを利用したセグメンテーションを紹介します。

## 実行環境
TPUまたはGPUのどちらでも動作しますが、特に物体検出の学習(`04ab_retinanet_arthropods.ipynb`)はGPUでは実行に時間がかかるため、特にTPUでの実行を推奨しています。

Vertex AI Workbench、ColabでのTPUの利用方法は、[実行環境のセットアップ](https://github.com/takumiohym/practical-ml-vision-book-ja/tree/main/environment_setup)の手順を確認ください。

## TIPS
### 物体検出
- `04aa_arthropods_dataprep.ipynb`
  - kaggleからのデータのダウンロード、前処理を行います。次のノートブックでは処理済みのデータを利用しますので、実行しなくてもかまいません。
- `04ab_retinanet_arthropods.ipynb`
  - TensorFlow Model GardenでのRetinaNetの実装を利用して、物体検出モデルの学習、推論を行います。
  - configの設定などは、Githubやドキュメントと対応させながら確認すると理解が進みやすくなります。
    - Github: https://github.com/tensorflow/models/tree/master/official/vision
    - ドキュメント: https://www.tensorflow.org/api_docs/python/tfm/vision
    
### セグメンテーション
- `04b_unet_segmentation.ipynb`
  - 学習済みのバックボーンをU-Netに変更して学習を行います。モデルの構造や、各層から出力されるTensorの形などに注目して実行してみましょう。
  

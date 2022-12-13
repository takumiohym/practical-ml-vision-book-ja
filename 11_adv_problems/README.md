# 第7章: 学習パイプライン
本章では、効率的にモデルを学習させるための様々な方法を確認します。

## 実行環境
それぞれのノートブックで前提とする環境が異なります。以下を参照してセットアップをしてください。<br>
Vertex AI Workbench、Colabの利用方法は、[実行環境のセットアップ](https://github.com/takumiohym/practical-ml-vision-book-ja/tree/main/environment_setup)の手順を確認ください。

- `11a_counting.ipynb`
  - ローカルでの実行を前提にしているため、**GPUのみ**で動作します。
  - Colabを使用している場合は、デフォルトのGPUだと学習に時間がかかります。素早く実行したい場合は、適宜エポック数（`NUM_EPOCHS`)やトレーニング画像数（`NUM_TRAIN`)などを小さく設定するか、有料版を利用している場合はPremier TierのGPUを利用してください。
- `11b_posenet.ipynb`
  - アクセレレータは必要ありませんので、どの環境からでも動作します。
- `11c_scann_search.ipynb`
  - SCANNとの互換性のある**GPUのみ**で動作します。
  - Colabを使用している場合は、デフォルトのGPUだと学習に時間がかかります。素早く実行したい場合は、Vertex AI WorkbenchでGPUを利用するか、有料版Colabで利用できるPremier TierのGPUを利用してください。

## TIPS
- `11b_posenet.ipynb`
  - ノートブックから、[11b_posenet/posenet.html](https://github.com/takumiohym/practical-ml-vision-book-ja/blob/main/11_adv_problems/11b_posenet/posenet.html)をGCSのパブリックにデプロイし、TensorFlow JSで公開されているPosenetの挙動を確認します。ロジックの詳細はhtmlファイルを参照してください。
 

# 環境設定

本レポジトリでは、第3章を除いてGPU環境での実行を想定しています。<br>
大規模なモデルを扱う3章ではTPU環境での実行を前提にしています。（GPU上での実行は可能ですが、実行には時間がかかります。またメモリに応じてバッチサイズを小さくするなどの変更をする畢業があります。）

詳しくは各章の`README.md`を参照してください。

以下に、Google Cloud のノートブック実行環境 Vertex AI Workbenchと、Google Colaboratory での設定方法を記載します。

**注: Vertex AI Workbenchでは、インスタンスやGPU/TPUの利用に関して費用がかかりますので、事前に料金を確認した上で行ってください。生じた費用について本書では責任を負いません。**

- [Vertex AI Workbench 料金](https://cloud.google.com/vertex-ai/pricing#user-managed-notebooks)
- [使用するインスタンスやGPUに関する料金](https://cloud.google.com/compute/all-pricing)
- [Google Cloud Price Calculator](https://cloud.google.com/products/calculator)

**また、Colaboratoryでは通常の利用は無料ですが、優先的にGPUリソースにアクセスできる等のメリットのある有料プランが用意されています。**
- [Google Colaboratory Plans](https://colab.research.google.com/signup) 

## Vertex AI Workbenchでの実行
### GPU 環境の作成
1.  Google Cloudのアカウントを作成し、[Google Cloud Console](https://console.cloud.google.com/)へアクセス
2.  左上の "Navigation menu"をクリックしてサービス一覧を開き、"Vertex AI" -> "Workbench" を選択
<img width="1000" alt="image" src="https://user-images.githubusercontent.com/6895245/205494431-3a1c9402-41cc-4d48-a00d-5a528f146885.png">

3. "NEW NOTEBOOK" -> "TensorFlow Enterprise" -> "TensorFlow Enterprize 2.8 (with LTS) -> "With NVIDIA T4" を順に選択
<img width="1000" alt="image" src="https://user-images.githubusercontent.com/6895245/205494561-60bcb1f5-d4e1-4ff2-8714-a0f4527e2c1e.png">

4. "Install NVIDIA GPU driver automatically for me" にチェックを入れ、"CREATE"をクリック。（RegionやZoneはデフォルトのままが推奨）
<img width="1000" alt="image" src="https://user-images.githubusercontent.com/6895245/205494687-f8b4dd41-f635-4622-856c-2b832466ee46.png">

---

### TPU 環境の作成
1.  Google Cloudのアカウントを作成し、[Google Cloud Console](https://console.cloud.google.com/)へアクセス
2.  コンソール右上の "Activate Cloud Shell"ボタンをクリックし、画面したに出てきたウィンドウ上で"Continue"をクリック
<img width="1000" alt="image" src="https://user-images.githubusercontent.com/6895245/205494892-5a7d259e-31e0-44dd-8e08-5d41c846c4d8.png">
3. [create_tpu_workbench.sh](https://github.com/takumiohym/practical-ml-vision-book-ja/blob/main/environment_setup/create_tpu_workbench.sh) のコマンドをコピーし、Cloud Shell に貼り付けて実行
4. 実行完了までにはしばらく時間がかかります。（コマンドでTPU中に取得でリソースエラーが出た場合は、再度実行するか、[リージョンやTPUのバージョンを変更](https://cloud.google.com/tpu/docs/regions-zones)して再実行してください。）
5. 

---

## Google Colaboratoryでの実行:
1. 各章のノートブックの上に表示されている"Run in Google Colab"をクリックし、 Google Colaboratory 上でノートブックを開く
<img width="1194" alt="image" src="https://user-images.githubusercontent.com/6895245/205496296-14e6edcd-a743-4e6c-8e3a-e2e057f890bb.png">

### GPUの場合
2. デフォルトでGPUが利用可能です。そのままノートブックを実行してください。

### TPUの場合
2. "Runtime" -> "Change Runtime Typeを選択
<img width="1284" alt="image" src="https://user-images.githubusercontent.com/6895245/205496474-2be9a38d-a0df-4bed-aaa3-bd4154677082.png">
3. [Hardware Accelerator]ドロップダウンから[TPU]を選択
4. ノートブックを実行


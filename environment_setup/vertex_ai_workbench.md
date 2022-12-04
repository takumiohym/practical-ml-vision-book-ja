# Vertex AI Workbench 環境のセットアップ

## 利用についての注意
- Vertex AI Workbanchの利用には料金が発生します。事前に料金を確認した上で利用してください。生じた費用について本書では責任を負いません。
  - [Vertex AI Workbench 料金](https://cloud.google.com/vertex-ai/pricing#user-managed-notebooks)
  - [使用するインスタンスやGPUに関する料金](https://cloud.google.com/compute/all-pricing)
  - [Google Cloud Price Calculator](https://cloud.google.com/products/calculator)

## セットアップ
以下に、Vertex AI Workbench 環境のセットアップ方法を示します。<br>
GPUとTPUとで方法が異なるので注意してください。

### GPU 環境を利用する場合
1.  Google Cloudのアカウントを作成し、[Google Cloud Console](https://console.cloud.google.com/)へアクセス
2.  左上の "Navigation menu"をクリックしてサービス一覧を開き、"Vertex AI" -> "Workbench" を選択
<img width="1000" alt="image" src="https://user-images.githubusercontent.com/6895245/205494431-3a1c9402-41cc-4d48-a00d-5a528f146885.png">

3. "NEW NOTEBOOK" -> "TensorFlow Enterprise" -> "TensorFlow Enterprize 2.8 (with LTS) -> "With NVIDIA T4" を順に選択（他のGPUを利用したい場合は、Advanced Optionから任意のGPUを選択してください）
<img width="1000" alt="image" src="https://user-images.githubusercontent.com/6895245/205494561-60bcb1f5-d4e1-4ff2-8714-a0f4527e2c1e.png">

4. "Install NVIDIA GPU driver automatically for me" にチェックを入れ、"CREATE"をクリック。（RegionやZoneはデフォルトのままが推奨）
<img width="1000" alt="image" src="https://user-images.githubusercontent.com/6895245/205494687-f8b4dd41-f635-4622-856c-2b832466ee46.png">

---

### TPU 環境を利用する場合
1.  Google Cloudのアカウントを作成し、[Google Cloud Console](https://console.cloud.google.com/)へアクセス

2.  コンソール右上の "Activate Cloud Shell"ボタンをクリックし、画面したに出てきたウィンドウ上で"Continue"をクリック
<img width="1000" alt="image" src="https://user-images.githubusercontent.com/6895245/205494892-5a7d259e-31e0-44dd-8e08-5d41c846c4d8.png">

3.  [create_tpu_workbench.sh](https://github.com/takumiohym/practical-ml-vision-book-ja/blob/main/environment_setup/create_tpu_workbench.sh) のコマンドをコピーし、Cloud Shell に貼り付けて実行<br>

4.  実行完了までにはしばらく時間がかかります。コマンドでTPU中に取得でリソースエラーが出た場合は、再度実行するか、コマンド内の[リージョンやTPUのバージョンを変更](https://cloud.google.com/tpu/docs/regions-zones)して再実行してください。<br>

5.  左上の "Navigation menu"をクリックしてサービス一覧を開き、"Vertex AI" -> "Workbench" を選択
<img width="1000" alt="image" src="https://user-images.githubusercontent.com/6895245/205494431-3a1c9402-41cc-4d48-a00d-5a528f146885.png">

## トラブルシューティング
- メモリエラー等が発生する場合は、別プロセスでリソースが使用されている可能性があります。別のノートブックを実行する際には、他のプロセスを閉じてから次に進むようにしてください。
<img width="716" alt="image" src="https://user-images.githubusercontent.com/6895245/205499809-d5d1082f-8a0b-43c1-ae96-825d766f5b38.png">


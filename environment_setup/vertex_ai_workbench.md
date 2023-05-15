# Vertex AI Workbench 環境のセットアップ

## 利用についての注意
- Vertex AI Workbanchの利用には料金が発生します。事前に料金を確認した上で利用してください。生じた費用について本書では責任を負いません。
  - [Vertex AI Workbench 料金](https://cloud.google.com/vertex-ai/pricing#user-managed-notebooks)
  - [使用するインスタンスやGPUに関する料金](https://cloud.google.com/compute/all-pricing)
  - [Google Cloud Price Calculator](https://cloud.google.com/products/calculator)
- 利用していないときはインスタンスを停止しておくと費用が発生しません。GPUを利用している場合は、Vertex AI Workbenchのインスタンスを停止するだけで問題ありませんですが、TPUを利用する場合は、Workbenchインスタンスの他にリモートのTPUクラスタも停止する必要があります。
  - [tpu_script](./tpu_script)内に、WorkbenchインスタンスとTPUクラスタの停止、再起動、削除を行うコマンドを格納しています。TPUを使用している際はこちらを利用するようにすると安全です。

## セットアップ手順
以下に、Vertex AI Workbench 環境のセットアップ方法を示します。<br>
GPUとTPUとで方法が異なるので注意してください。


---
1. [ノートブック環境の作成](https://github.com/takumiohym/practical-ml-vision-book-ja/edit/main/environment_setup/vertex_ai_workbench.md#1-%E3%83%8E%E3%83%BC%E3%83%88%E3%83%96%E3%83%83%E3%82%AF%E7%92%B0%E5%A2%83%E3%81%AE%E4%BD%9C%E6%88%90)
  - [GPU 環境を利用する場合](https://github.com/takumiohym/practical-ml-vision-book-ja/edit/main/environment_setup/vertex_ai_workbench.md#1-%E3%83%8E%E3%83%BC%E3%83%88%E3%83%96%E3%83%83%E3%82%AF%E7%92%B0%E5%A2%83%E3%81%AE%E4%BD%9C%E6%88%90)
  - [TPU 環境を利用する場合](https://github.com/takumiohym/practical-ml-vision-book-ja/edit/main/environment_setup/vertex_ai_workbench.md#1-%E3%83%8E%E3%83%BC%E3%83%88%E3%83%96%E3%83%83%E3%82%AF%E7%92%B0%E5%A2%83%E3%81%AE%E4%BD%9C%E6%88%90)
2. [レポジトリのクローン](https://github.com/takumiohym/practical-ml-vision-book-ja/edit/main/environment_setup/vertex_ai_workbench.md#1-%E3%83%8E%E3%83%BC%E3%83%88%E3%83%96%E3%83%83%E3%82%AF%E7%92%B0%E5%A2%83%E3%81%AE%E4%BD%9C%E6%88%90)
---

### 1. ノートブック環境の作成
#### GPU 環境を利用する場合
1.  Google Cloudのアカウントを作成し、[Google Cloud Console](https://console.cloud.google.com/)へアクセス
2.  左上の "Navigation menu"をクリックしてサービス一覧を開き、"Vertex AI" -> "Workbench" を選択
> <img width="750" alt="image" src="https://user-images.githubusercontent.com/6895245/205494431-3a1c9402-41cc-4d48-a00d-5a528f146885.png">

3. "NEW NOTEBOOK" -> "TensorFlow Enterprise" -> "TensorFlow Enterprize 2.8 (with LTS) -> "With NVIDIA T4" を順に選択（他のGPUを利用したい場合は、Advanced Optionから任意のGPUを選択してください）
> <img width="750" alt="image" src="https://user-images.githubusercontent.com/6895245/205494561-60bcb1f5-d4e1-4ff2-8714-a0f4527e2c1e.png">

4. "Region"には"us-central1"を指定し（ゾーンはいずれでもかまいません）、"Install NVIDIA GPU driver automatically for me" にチェックを入れ、"CREATE"をクリック。
> <img width="750" alt="image" src="https://user-images.githubusercontent.com/6895245/208476587-fc45e556-7608-4427-ae3a-43d96b1d189e.png">

5. 数分待ち、インスタンスが作成されたら表示されている `OPEN JUPYTERLAB`をクリック
---

#### TPU 環境を利用する場合
1.  Google Cloudのアカウントを作成し、[Google Cloud Console](https://console.cloud.google.com/)へアクセス

2.  コンソール右上の "Activate Cloud Shell"ボタンをクリックし、画面したに出てきたウィンドウ上で"Continue"をクリック
> <img width="750" alt="image" src="https://user-images.githubusercontent.com/6895245/205494892-5a7d259e-31e0-44dd-8e08-5d41c846c4d8.png">

3.  [tpu_scripts/create_tpu_workbench.sh](https://github.com/takumiohym/practical-ml-vision-book-ja/blob/main/environment_setup/tpu_scripts/create_tpu_workbench.sh) のコマンドをコピーし、Cloud Shell に貼り付けて実行<br>

4.  実行完了までにはしばらく時間がかかります。コマンドでTPU中に取得でリソースエラーが出た場合は、再度実行するか、コマンド内の[リージョンやTPUのバージョンを変更](https://cloud.google.com/tpu/docs/regions-zones)して再実行してください。<br>

5.  左上の "Navigation menu"をクリックしてサービス一覧を開き、"Vertex AI" -> "Workbench" へ遷移し、作成されたインスタンスに表示されている `OPEN JUPYTERLAB`をクリック
> <img width="750" alt="image" src="https://user-images.githubusercontent.com/6895245/205494431-3a1c9402-41cc-4d48-a00d-5a528f146885.png">


### 2.レポジトリのクローン
6. JupyterLabを開いたら、`Terminal`をクリック
> <img width="750" alt="image" src="https://user-images.githubusercontent.com/6895245/208481492-b160e77f-3047-49fe-8a8f-5c2d492169d8.png">

7. ターミナル内で、`git clone https://github.com/takumiohym/practical-ml-vision-book-ja` コマンドを実行し、このレポジトリをクローン。
> <img width="750" alt="image" src="https://user-images.githubusercontent.com/6895245/208482015-11862333-b786-4863-a4f0-fbdf5378ac7c.png">

8. 左側ウィンドウに表示される`practical-ml-vision-book-ja`から各ノートブックファイルにアクセスし、上から順に実行する。
> <img width="750" alt="image" src="https://user-images.githubusercontent.com/6895245/208482440-acf502a5-e41a-4429-8931-35a4c80d7bdc.png">



## トラブルシューティング
- メモリエラー等が発生する
  - 環境によってはそのままでは動作しないことがあります。適宜各章のREADMEファイルと、ノートブック内のインストラクションを確認して進めてください。
  - GPU環境の場合は、別プロセスでリソースが使用されいて不足している際にも発生します。新しいノートブックを実行する際には、他のプロセスを閉じてから次に進むようにしてください。
<img width="716" alt="image" src="https://user-images.githubusercontent.com/6895245/205499809-d5d1082f-8a0b-43c1-ae96-825d766f5b38.png">


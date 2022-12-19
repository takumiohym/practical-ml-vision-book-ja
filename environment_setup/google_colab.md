# Google Colaboratory の利用方法

## 利用についての注意点
- Google Colaboratoryの通常の利用は無料ですが、優先的により高性能なGPUリソースにアクセスできる等のメリットがある有料プランが用意されています。
  - 本書で扱うモデルの学習には時間がかかるものもあります。可能であれば有料プランの利用を検討してください。
- 本書でホストされているGoogle Cloud StorageのバケットはGoogle Cloudの`us-central1`リージョン（米国中部）でホストされています。ColabではGPU環境の実行場所を選択することができません（TPUは`us-central1`が自動的に選択されます）ので、いくつかのノートブックではデータの読み込みに伴うオーバーヘッドに時間がかかる場合があります。

## 利用方法

1. 各章のノートブックの上に表示されている"Run in Google Colab"をクリックし、 Google Colaboratory 上でノートブックを開く
<img width="1194" alt="image" src="https://user-images.githubusercontent.com/6895245/205496296-14e6edcd-a743-4e6c-8e3a-e2e057f890bb.png">

2. "Runtime" -> "Change Runtime Typeを選択
<img width="1284" alt="image" src="https://user-images.githubusercontent.com/6895245/205496474-2be9a38d-a0df-4bed-aaa3-bd4154677082.png">
3. "Hardware Accelerator"ドロップダウンから、実行するノートブックに応じて"GPU"か"TPU"（第三章のみ）を選択<br>
4. Colab Proの場合、さらに"GPU class"と"Runtime shape"を指定することができます。高性能な"Premium"と"High-RAM"を選択してください。
<img width="400" alt="image" src="https://user-images.githubusercontent.com/6895245/205500463-56a2c21d-c3a9-4171-9f17-198f98112859.png">

# コンピュータビジョンのための実践的機械学習
Valliappa Lakshmanan, Martin Gorner, Ryan Gillard 著<br>
大山匠 監訳、松田晃一 訳

<a href="https://www.amazon.co.jp/%E3%82%B3%E3%83%B3%E3%83%94%E3%83%A5%E3%83%BC%E3%82%BF%E3%83%93%E3%82%B8%E3%83%A7%E3%83%B3%E3%81%AE%E3%81%9F%E3%82%81%E3%81%AE%E5%AE%9F%E8%B7%B5%E6%A9%9F%E6%A2%B0%E5%AD%A6%E7%BF%92-%E2%80%95%E3%83%A2%E3%83%87%E3%83%AB%E3%82%A2%E3%83%BC%E3%82%AD%E3%83%86%E3%82%AF%E3%83%81%E3%83%A3%E3%81%8B%E3%82%89MLOps%E3%81%BE%E3%81%A7-Valliappa-Lakshmanan/dp/4814400381">
<img src="images/cover.jpg" height="500" /></a>


このリポジトリは、『コンピュータビジョンのための実践的機械学習』で使用するコードを収録しています。

コードは章ごとのディレクトリに格納されており、各章ごとに実行環境に関する`README.md`が用意されています。

## 実行環境
日本語版では、コードはVertex AI Workbench（推奨）、Colabで実行できるように構築、アップデートされています。<br>
環境構築の詳細は、[こちらのガイド](https://github.com/takumiohym/practical-ml-vision-book-ja/tree/main/environment_setup)を参照してください。

**注: 実行に関して発生する各サービスの費用については、本書では責任を負いません。事前に環境についてのドキュメントを参照してから利用してください。**

また、各ノートブックごとに、必要ライブラリや利用可能なアクセレレータ(GPU/TPU)に違いがあります。<br>
こちらは各章のディレクトリ内の`README.md`と、ノートブック内の記載を参照して実行してください。

本書で中心的に扱われているTensorFlowについては、日本語版ではv2.8以降のバージョンでの実行を前提にアップデート及びテストされています。

## よくある質問、トラブルシューティング
- `Out of memory` エラーや `ResourceExausted` エラーが発生する。
  - Vertex AI Workbenchを利用している場合、ノートブックのUIから、他のノートブックプロセスが実行されていないことを確認してください。実行されている場合はシャットダウンしてから次のノートブックを利用するようにしてください。
  - それでも解決しない場合は、各章の`README.md`やノートブック内に記載されている注意点を確認の上、実行環境にあわせて必要な変更（バッチサイズや画像の解像度を小さくするなど）を加えた上で再実行してください。
- Colabで `Authorization Issue` や `Permission Issue` が発生する。
  - Google Cloud に関連するサービスからのエラーの可能性があります。基本的にはノートブック内に必要な設定や認証方法が記載されていますので、そちらを実行しているか確認してください。それでも解決しない場合は、Google Cloudで特別な設定（社用環境での特別なアクセス制限など）がされていないことを確認してください。
- Colabでの実行がVertex AI Workbenchでの実行より遅い
  - 学習データは、Google Cloudの`us-central1`リージョン（米国中部）のGoogle Cloud Storageに置かれています。そのため、Vertex AI Workbenchではインスタンスをこのリージョン内のゾーンを指定することで高速にデータ読み込みが可能です。しかしColabでは、実行環境のサーバの場所を指定することはできませんので、場合によっては学習に非常に時間がかかることがあります。

その他のフィードバックは、本レポジトリのIssueやPRでお知らせください。

**This is not an official Google product**

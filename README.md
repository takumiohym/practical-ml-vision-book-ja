# (仮) コンピュータビジョンのための実践的機械学習
Valliappa Lakshmanan, Martin Gorner, Ryan Gillard 著<br>
大山匠 監訳、松田晃一 訳

<a href="https://www.amazon.com/Practical-Machine-Learning-Computer-Vision/dp/1098102363">
<img src="mlvision_book_animation.gif" height="200" /></a>


このレポジトリは、『コンピュータビジョンのための実践的機械学習』で使用するコードを収録しています。

コードは章ごとのディレクトリに格納されており、各章ごとに実行環境に関する`README.md`が用意されています。

## 実行環境
日本語版では、コードはVertex AI Workbench、Colabで実行できるように構築、アップデートされています。<br>
環境構築の詳細は、[こちらのガイド](https://github.com/takumiohym/practical-ml-vision-book-ja/tree/main/environment_setup)を参照してください。

**注: 実行に関して発生する各サービスの費用については、本書では責任を負いません。事前に環境についてのドキュメントを参照してから利用してください。**

また、各ノートブックごとに、必要ライブラリや利用可能なアクセレレータ(GPU/TPU)に違いがあります。<br>
こちらは各章のディレクトリ内の`README.md`と、ノートブック内の記載を参照して実行してください。

本書で中心的に扱われているTensorFlowについては、日本語版では2.8x および2.9x での実行を前提にアップデート及びテストされています。

## よくある質問、トラブルシューティング
- Vertex AI Workbenchで`Out of memory` エラーや `ResourceExausted` エラーが発生する。
  - ノートブックのUIから、他のノートブックプロセスが実行されていないことを確認してください。実行されている場合はシャットダウンしてから次のノートブックを利用するようにしてください。
  - それでも治らない場合は、各章の`README.md`やノートブック内に記載されている注意点を確認の上、必要な変更（バッチサイズを小さくするなど）を加えた上で再実行してください。
- Colab で `Authorization Issue` や `Permission Issue` が発生する。
  - Google Cloud に関連するサービスからのエラーの可能性があります。基本的にはノートブック内に必要な設定や認証方法が記載されていますので、そちらを実行しているか確認してください。それでも治らない場合は、Google Cloudで特別な設定（社用環境での特別なアクセス制限など）がされていないことを確認してください。

その他のフィードバックは、本レポジトリのIssueやPRでお知らせください。

**This is not an official Google product**

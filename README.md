# Python-Dockerfile
Python学習用にDokerを使って ubuntu で jupyterlab を起動します

##### Doker を使わずに ubuntu に直接環境構築する場合は下記ページを参考にセットアップ
- https://github.com/murcubcc110/Ubuntu-Docker/blob/main/README2.md

# 使い方

### Docker環境がない場合は下記ページを参考にセットアップ

- Windows へ Docker をセットアップ  
  https://qiita.com/zaki-lknr/items/db99909ba1eb27803456

- ubuntu へ Docker をセットアップ  
  https://github.com/murcubcc110/Ubuntu-Docker/blob/main/README.md

### Docker環境がある場合は

1. Dockerfileをダウンロード

2. イメージをビルド
   ```bash
   # [my-python] でビルド
   $ docker build -t my-python .
   # [my-container] でコンテナ起動（ローカル環境：~/MyDocker/workをDocker内：/workspace へマウント）
   $ docker run -it -p 8888:8888 -v ~/MyDocker/work:/workspace --name my-container my-python
   ```

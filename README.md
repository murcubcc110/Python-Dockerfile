# Python-Dockerfile
Python学習用にDokerを使って ubuntu で jupyterlab を起動します

# 使い方

### Docker環境がない場合は下記ページを参考にセットアップ

- https://qiita.com/zaki-lknr/items/db99909ba1eb27803456

### Docker環境がある場合は

1. Dockerfileをダウンロード

2. イメージをビルド
   ```bash
   # [my-python] でビルド
   $ docker build -t my-python .
   # [my-container] でコンテナ起動（ローカル環境：~/MyDocker/workをDocker内：/workspace へマウント）
   $ docker run -it -p 8888:8888 -v ~/MyDocker/work:/workspace --name my-container my-python
   ```

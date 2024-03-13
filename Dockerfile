# ベースイメージを指定
FROM python:3.9

# Discordボットのコードをコピー
COPY . /app
WORKDIR /app

# 必要なパッケージをインストール
RUN pip install -r requirements.txt

# コンテナが起動した時にDiscordボットを実行
CMD ["python", "main.py"]

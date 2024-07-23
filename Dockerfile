FROM node:20.11.1

# ワーキングディレクトリを設定
WORKDIR /nextjs

# package.jsonとpackage-lock.jsonをコピー
COPY package*.json ./

# 依存関係をインストール
RUN npm install --legacy-peer-deps

# アプリケーションのソースコードをコピー
COPY . .

# アプリケーションをビルド
RUN npm run build

# アプリケーションを起動
CMD ["npm", "start"]

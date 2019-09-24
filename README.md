# README

# Conti(コンティ) 楽器演奏者をつなげるスキルシェアSNS

## 概要
楽器の演奏者が練習した曲や機材について投稿し、その情報をもとに他のユーザーがリクエストを出すことができます。

## コンセプト
機材、曲についての情報をもとにピンポイントでユーザーを検索することで、自分の悩みを解決できる人を見つけることができる。

## バージョン
ruby 2.6.3

Rails 6.0.0

psql (PostgreSQL) 11.4

## 機能一覧
##### プロフィール機能
- ユーザのプロフィールを登録、公開する。
##### ポートフォリオ作成機能
- 自身が練習した曲、フレーズを記録して公開する。
##### リクエスト機能
- 他のユーザに向けて質問等のリクエストをする。
##### サービス機能
- 他のユーザに向けて自分が提供できるサービスを公開する。
##### 検索機能
- 自分が探したいユーザや曲などについての情報を検索する。
##### ログイン機能
- 自分の情報を他人が編集できないようにする。
##### マイページ機能
- 自分の情報を編集する。

## カタログ設計
https://docs.google.com/spreadsheets/d/1S1xNroTYPTEsgTpbdJ6N35Qgfny1puFsBCSzxExClAA/edit?usp=sharing
## テーブル定義
https://docs.google.com/spreadsheets/d/1S1xNroTYPTEsgTpbdJ6N35Qgfny1puFsBCSzxExClAA/edit?usp=sharing
## ER図
https://docs.google.com/spreadsheets/d/1S1xNroTYPTEsgTpbdJ6N35Qgfny1puFsBCSzxExClAA/edit?usp=sharing

## 画面遷移図


## 使用gem
- devise
- font-awesome-sass
- image_processing
- shrine
- mini_magick
- ransack
- bootstrap4-datetime-picker-rails
- bootstrap-honoka-rails
- letter_opener_web
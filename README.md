# README

## Name:
サイト名: Child Raise Sharing  
WebサイトURL: https://guarded-spire-36162.herokuapp.com/

## Overview:
共働き世帯が増加している現状から、私自身が目の当たりにした問題を元にこれからの日本でもっと深刻化する子育てを地域住民で支援していくためのWebアプリとなります。また、本サイトは個人で使用していくのではなく、各市町村の教育委員会や行政と連携して活用していくことを想定しております。（コメント機能やレビュー機能により安全性を確立することも検討しましたが、教育委員会や行政から、託児を受け入れる方へ免許・資格のようなものを発行し、それを元に当サイトの信頼性を築くことを考えました。）

## issue:
- 共働き家庭の増加
- 台風などの災害による託児施設の一時サービス停止
- 災害時にも会社へ出勤が必要な日本の現状

## Description:
- deviseによるユーザー管理機能
- 託児依頼、預かりオファーの投稿
- 託児以来に対する返信機能
- Vegasによる画像ループ（トップページ）
- chat機能の非同期通信

## Usage:
- 共通作業  
ユーザー登録画面にて各種必要事項を入力
- 依頼主側  
①トップページにて受付オファーの確認  
②依頼したいオファーのユーザーページから、該当オファーの依頼するをクリック  
③依頼フォームを入力  
④依頼先から「承諾」または「辞退」の返信を待つ  
⑤「承諾」の場合はマイページにてチャットルームへのリンクが作成される  
⑥チャット画面にて依頼先と打ち合わせ
- 受託側  
①受託フォームの入力  
②受付確認画面から依頼があれば返信画面へ  
③依頼主へ「承諾」または「辞退」の返信  
④依頼主のマイページへ返信内容が表示される  
⑤「承諾」を選択した場合はチャットルーム作成  
⑥チャット画面にて依頼主との詳細のやり取り

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|text|unique: true|
|password|tring|null: false|
|nickname|string|null: false|
|prefecture_id|integer|null: false|
|city|string|null: false|
|building_street|string|null: false, unique: true|
|age|integer|null: false|
|gender|string|null: false|

### Association
- has_many :accepts
- has_many :requests
- has_many :rooms
- has_many :messages


## accepts テーブル
|Column|Type|Options|
|------|----|-------|
|date|date|null: false|
|time|integer|null: false|
|capacity|integer|null: false|
|age_range|string||
|beg|text||
|hide|string||
|user_id|reference|null: false, foreign_key: true|

### Assosiation
- belongs_to :user
- has_many :requests
- has_many :rooms


## requests テーブル
|Column|Type|Options|
|------|----|-------|
|date|date|null: false|
|time|integer|null: false|
|name|string|null: false|
|gender|string|null: false|
|age|integer|null: false|
|allergy|text||
|personality|text||
|mention|text||
|reply|string||
|user_id|reference|null: false, foreign_key: true|

### Assosiation
- belongs_to :accept
- belongs_to :user
- has_one :room


## rooms テーブル
|Column|Type|Options|
|------|----|-------|
|user_id|reference|null: false, foreign_key: true|
|request_id|reference|null: false, foreign_key: true|

### Assosiation
- belongs_to :user
- belongs_to :request
- has_many   :messages


## messages テーブル
|Column|Type|Options|
|------|----|-------|
|chat|string|null: false|
|user_id|reference|null: false, foreign_key: true|
|room_id|reference|null: false, foreign_key: true|

### Assosiation
- has_many :users
- belongs_to :room
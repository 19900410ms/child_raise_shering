# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|text|unique: true|
|password|tring|null: false|
|nickname|string|null: false|
|region|string|null: false|
|address|string|null: false, unique: true|
|age|integer|null: false|
|gender|string|null: false|

### Association
- has_many :children
- has_many :accepts
- has_many :requests
- has_many :comments


## accepts テーブル
|Column|Type|Options|
|------|----|-------|
|date|date|null: false|
|time|integer|null: false|
|capacity|integer|null: false|
|age_range|inetger||
|beg|text||
|user_id|reference|null: false, foreign_key: true|

### Assosiation
- belongs_to :user


## requests テーブル
|Column|Type|Options|
|------|----|-------|
|date|date|null: false|
|time|integer|null: false|
|mention|text||
|user_id|reference|null: false, foreign_key: true|

### Assosiation
- has_many :children
- belongs_to :user


## commnts テーブル
|Column|Type|Options|
|------|----|-------|
|text|text||
|user_id|reference|null: false, foreign_key: true|

### Association
- belongs_to :user

## childrenテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|gender|string|null: false|
|age|integer|null: false|
|allergy|text||
|personality|text||
|user_id|reference|null: false, foreign_key: true|
|request_id|reference|null: false, foreign_key: true|

### Assosiation
- belongs_to :user
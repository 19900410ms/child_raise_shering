# README

## Name: Child Raise Sharing

## Overview:
共働き世帯が増加している現状から、私自身が目の当たりにした問題を元にこれからの日本でもっと深刻化する子育てを支援するWebアプリとなります。

## Description


## Demo

## Requirement

## Usage

## Contribution

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
- has_many :accepts
- has_many :requests


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
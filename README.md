## users

|Column|Type|Options|
|------|----|-------|
|name|string|add_index :users, :name, null: false, unique: true|
|email|string|null: false|
|password|integer|null: false|
|user_id|integer|null: false, foreign_key: true|
|gender|enum('M','F')||
|age|integer||

### Association
- has_many : pins


## pins
|Column|Type|Options|
|------|----|-------|
|title|string|null: false|
|description|||

## Association
- belongs_to : user

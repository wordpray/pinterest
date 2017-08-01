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
- has_many : user_boards
- has_many : boards, through: :user_boards


## boards
|Column|Type|Options|
|------|----|-------|
|name|string|add_index :boards, :name, null: false, unique: true|

## Association
- has_many : pins
- has_many : user_boards
- has_many : users,  through: :user_boards


## user_boards
|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|
|boards_id|references|null: false, foreign_key: true|

## Association
- belongs_to : user
- belongs_to : board


## pins
|Column|Type|Options|
|------|----|-------|
|title|string||
|description|||
|image|string|null: false|
|board_id|references|null: false, foreign_key: true|
|user_id|references|null: false, foreign_key: true|

## Association
- belongs_to : user
- belongs_to : board
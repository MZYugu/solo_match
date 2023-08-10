# README

## テーブル設計

### users

| Column | Type | Options |
| --- | --- | --- |
| user_name | string | null :false |
| email | string | null :false, unique: true |
| encrypted_password | string | null :false |
| introduction | text |  |
| birthday | date |null :false |

#### Association
- has_many :topics
- has_many :messages

### venues

| Column | Type | Options |
| --- | --- | --- |
| venue_name | string | null :false |
| prefecture_id | integer | null :false |
| address | string | null :false |
| link | string |  |

#### Association
- has_many :events

### events

| Column | Type | Options |
| --- | --- | --- |
| event_name | string | null :false |
| opening_date | date | null :false |
| last_date | date | null :false |
| genre_id | integer | null: false |
| link | string |  |
| venue |references | null :false, foreign_key: true |

#### Association
- belongs_to :venue
- has_many :topics

### topics

| Column | Type | Options |
| --- | --- | --- |
| title | string | null: false |
| category_id | integer | null: false |
| top_text | text | null: false |
| user | references | null: false |
| event | references | null: false |

#### Association
- belongs_to :user
- belongs_to :event
- has_many :messages

### messages

| Column | Type | Options |
| --- | --- | --- |
| text | text | null: false |
| user | references | null: false, foreign_key: true |
| topic | references | null: false, foreign_key: true |

#### Association
- belongs_to :user
- belongs_to :topic

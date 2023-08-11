class Event < ApplicationRecord
  belongs_to :venue
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefecture

  with_options presence: true do
    validates :event_name
    validates :openig_date
    validates :last_date
    validates :genre_id, numericality: { other_than: 1, message: "can't be blank."}
  end

end
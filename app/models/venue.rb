class Venue < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefecture
  
  with_options presence: true do
    validates :venue_name
    validates :prefecture_id, numericality: { other_than: 1, message: "can't be blank."}
    validates :address
    validates :link
  end
  
end

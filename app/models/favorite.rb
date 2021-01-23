class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :good_thing
  
  # 1ユーザーにつき、1いいね
  validates :user_id, uniqueness: { scope: [:good_thing_id] }
  
end

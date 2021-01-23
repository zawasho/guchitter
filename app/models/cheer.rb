class Cheer < ApplicationRecord
  belongs_to :user
  belongs_to :complaint
  
  # 1ユーザーにつき、1いいね
  validates :user_id, uniqueness: { scope: [:complaint_id] }
end

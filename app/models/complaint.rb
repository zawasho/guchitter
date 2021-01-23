class Complaint < ApplicationRecord
  belongs_to :user
  has_many :cheers, dependent: :destroy

  validates :title, :body, presence: true

  def cheered_by?(user)
    p "cheered_by"
    p cheers.where(user_id: user.id)
    cheers.where(user_id: user.id).exists?
  end
end

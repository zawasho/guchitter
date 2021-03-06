class Complaint < ApplicationRecord
  belongs_to :user
  has_many :cheers, dependent: :destroy

  validates :title, :body, presence: true

  def cheered_by?(user)
    cheers.where(user_id: user.id).exists?
  end
end

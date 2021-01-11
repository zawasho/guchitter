class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :cheers, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :complaints, dependent: :destroy
  has_many :good_things, dependent: :destroy

end

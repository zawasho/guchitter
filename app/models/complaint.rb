class Complaint < ApplicationRecord
    
   belongs_to :user
   has_many :cheers, dependent: :destroy
   
end

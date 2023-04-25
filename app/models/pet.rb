class Pet < ApplicationRecord
  has_one_attached :image
 #need to add belongs_to :user once i add User model and User model will have has_many :pets 

end

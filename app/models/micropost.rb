class Micropost < ActiveRecord::Base
  belongs_to :user  #reverse mapping required?
  validates :content, length: { maximum: 140 }
end

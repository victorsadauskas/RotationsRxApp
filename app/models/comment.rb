class Comment < ActiveRecord::Base
  belongs_to :rotation

  validates :name, presence: true
  validates :body, presence: true
  validates :rating, allow_blank: true, numericality: true , :inclusion => 1..10

  
end

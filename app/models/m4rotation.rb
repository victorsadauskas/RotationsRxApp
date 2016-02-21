class M4rotation < ActiveRecord::Base
	has_many :m4comments, dependent: :destroy 
end

class Post < ApplicationRecord
	#rake db:migrate to create the migration table
	has_many :comments
	validates :title, presence: true,
						length: {minimum: 1}
	validates :body, presence: true,
						length: {minimum: 1}
end

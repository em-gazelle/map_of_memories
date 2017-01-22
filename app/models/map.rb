class Map < ActiveRecord::Base
	has_many :markers, dependent: :destroy
	belongs_to :user

end
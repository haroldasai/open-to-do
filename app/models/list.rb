class List < ActiveRecord::Base
	belongs_to :user
	has_many :items, dependent: :destroy

	validates :name, presence: true
	validates :private, exclusion: { in: [nil] }
end

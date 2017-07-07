class Item < ActiveRecord::Base
	belongs_to :list

	validates :name, presence: true
	validates :completed, exclusion: { in: [nil] }
end

class Article < ApplicationRecord
	belongs_to :user
	acts_as_taggable_on :tags
	is_impressionable counter_cache: true
end

class Project < ApplicationRecord
	has_many :tasks, -> {order "position"}, dependent: :destroy
	accepts_nested_attributes_for :tasks

	default_scope { order "created_at ASC"}
end

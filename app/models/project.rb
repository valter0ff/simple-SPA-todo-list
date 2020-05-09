class Project < ApplicationRecord
	has_many :tasks, -> {order "created_at ASC"}, dependent: :destroy
	accepts_nested_attributes_for :tasks
end

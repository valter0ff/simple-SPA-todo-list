# frozen_string_literal: true

class Project < ApplicationRecord
  has_many :tasks, -> { order :position }, dependent: :destroy, inverse_of: :project
  belongs_to :user
  validates :title, presence: true

  accepts_nested_attributes_for :tasks
  default_scope { order 'created_at ASC' }
end

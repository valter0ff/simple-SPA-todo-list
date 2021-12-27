# frozen_string_literal: true

class Task < ApplicationRecord
  include RailsSortable::Model
  set_sortable :position

  belongs_to :project
  validates :title, presence: true

  scope :by_position, -> { order(:position) }
  scope :completed, -> { where(completed: true) }
  scope :uncompleted, -> { where(completed: false) }
end

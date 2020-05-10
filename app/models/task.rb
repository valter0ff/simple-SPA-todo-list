class Task < ApplicationRecord
  belongs_to :project

  validates :title, presence: true

  scope :by_position, -> { order(:position) }
  scope :completed, -> { where(completed: true) }
  scope :uncompleted, -> { where(completed: false) }
  
  def toggle_completed!
    toggle!(:completed)
  end
end

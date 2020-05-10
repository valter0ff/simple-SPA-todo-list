class AddCompletedAddDeadline < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :deadline, :datetime
    remove_column :tasks, :deadline
    add_column :tasks, :completed, :boolean
    add_column :tasks, :position, :integer
  end
end

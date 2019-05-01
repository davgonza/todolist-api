class AddPriorityToTodos < ActiveRecord::Migration[5.2]
  def change
    add_column :todos, :priority, :boolean
  end
end

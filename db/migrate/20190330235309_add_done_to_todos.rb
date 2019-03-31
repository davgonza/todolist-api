class AddDoneToTodos < ActiveRecord::Migration[5.2]
  def change
    add_column :todos, :done, :boolean
  end
end

class AddFinishByDateToTodos < ActiveRecord::Migration[5.2]
  def change
    add_column :todos, :finish_by_date, :datetime
  end
end

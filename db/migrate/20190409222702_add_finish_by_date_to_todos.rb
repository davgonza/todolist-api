class AddFinishByDateToTodos < ActiveRecord::Migration[5.2]
  def change
    add_column :todos, :finishByDate, :datetime
  end
end

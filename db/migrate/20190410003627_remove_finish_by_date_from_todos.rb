class RemoveFinishByDateFromTodos < ActiveRecord::Migration[5.2]
  def change
    remove_column :todos, :finishByDate, :datetime
  end
end

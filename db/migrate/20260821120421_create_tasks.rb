class CreateTasks < ActiveRecord::Migration[8.1]
  def change
    create_table :tasks do |t|
      t.string :tittle
      t.string :status
      t.timestamps
    end
  end
end

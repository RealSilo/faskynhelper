class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :description
      t.datetime :due_date
      t.references :user, index: true

      t.timestamps
    end
  end
end

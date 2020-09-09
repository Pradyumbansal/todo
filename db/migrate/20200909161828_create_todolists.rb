class CreateTodolists < ActiveRecord::Migration[5.1]
  def change
    create_table :todolists do |t|
      t.text :title
      t.string :priority
      t.datetime :duedate

      t.timestamps
    end
  end
end

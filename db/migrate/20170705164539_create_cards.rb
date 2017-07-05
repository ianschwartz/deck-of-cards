class CreateCards < ActiveRecord::Migration[5.1]
  def change
    create_table :cards do |t|
      t.string :rank
      t.string :suit
      t.integer :value
      t.string :color

      t.timestamps
    end
  end
end

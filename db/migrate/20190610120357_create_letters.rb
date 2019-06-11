class CreateLetters < ActiveRecord::Migration[5.2]
  def change
    create_table :letters do |t|
      t.string      :habit
      t.timestamps null: true
    end
  end
end

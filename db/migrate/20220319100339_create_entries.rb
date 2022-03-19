class CreateEntries < ActiveRecord::Migration[7.0]
  def change
    create_table :entries do |t|
      t.text :field_1
      t.text :field_2
      t.text :field_3
      t.text :field_4
      t.text :field_5
      t.text :field_6

      t.timestamps
    end
  end
end

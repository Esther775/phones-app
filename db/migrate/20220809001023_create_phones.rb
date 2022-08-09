class CreatePhones < ActiveRecord::Migration[7.0]
  def change
    create_table :phones do |t|
      t.string :edition
      t.string :color
      t.string :size

      t.timestamps
    end
  end
end

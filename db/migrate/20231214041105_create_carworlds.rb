class CreateCarworlds < ActiveRecord::Migration[7.1]
  def change
    create_table :carworlds do |t|
      t.string :brand
      t.string :model

      t.timestamps
    end
  end
end

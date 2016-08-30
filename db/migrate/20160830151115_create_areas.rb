class CreateAreas < ActiveRecord::Migration
  def change
    create_table :areas do |t|
      t.string :nombre
      t.integer :cantidad

      t.timestamps null: false
    end
  end
end

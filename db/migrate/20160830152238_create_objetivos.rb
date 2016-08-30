class CreateObjetivos < ActiveRecord::Migration
  def change
    create_table :objetivos do |t|
      t.text :texto
      t.string :nombre
      t.integer :clasificacion_id
      t.integer :area_id

      t.timestamps null: false
    end
  end
end

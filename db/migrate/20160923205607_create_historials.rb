class CreateHistorials < ActiveRecord::Migration
  def change
    create_table :historials do |t|
      t.integer :usuario_id
      t.integer :beneficiario_id
      t.integer :estado_id
      t.integer :objetivos_id

      t.timestamps null: false
    end
  end
end

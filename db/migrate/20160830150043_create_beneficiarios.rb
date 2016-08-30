class CreateBeneficiarios < ActiveRecord::Migration
  def change
    create_table :beneficiarios do |t|

      t.string :nombre
      t.string :apellido
      t.integer :rut
      t.date :fecha_nacimiento
      t.integer :edad

      t.timestamps null: false
    end
  end
end

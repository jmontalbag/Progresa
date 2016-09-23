class AddForeingtohistorials < ActiveRecord::Migration
  def change
  	add_foreign_key :historials, :usuarios, column: :usuario_id, primary_key: "id"
  	add_foreign_key :historials, :beneficiarios, column: :beneficiario_id, primary_key: "id"
  	add_foreign_key :historials, :estados, column: :estado_id, primary_key: "id"
  	add_foreign_key :historials, :objetivos, column: :objetivos_id, primary_key: "id"
  end
end

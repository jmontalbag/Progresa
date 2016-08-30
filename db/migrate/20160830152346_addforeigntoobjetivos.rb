class Addforeigntoobjetivos < ActiveRecord::Migration
  def change
  	add_foreign_key :objetivos, :clasificaciones, column: :clasificacion_id, primary_key: "id"
  	add_foreign_key :objetivos, :areas, column: :area_id, primary_key: "id" 
  end
end

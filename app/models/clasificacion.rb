class Clasificacion < ActiveRecord::Base
	self.table_name = "clasificaciones"
    has_many :objetivos
end

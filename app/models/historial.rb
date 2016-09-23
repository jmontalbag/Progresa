class Historial < ActiveRecord::Base
	belongs_to :usuario
	belongs_to :beneficiario
	belongs_to :estado
	belongs_to :objetivo
end

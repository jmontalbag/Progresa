class Objetivo < ActiveRecord::Base
	belongs_to :area
	belongs_to :clasificacion
end

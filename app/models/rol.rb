class Rol < ActiveRecord::Base
	self.table_name = "roles"
	has_many :usuarios
end

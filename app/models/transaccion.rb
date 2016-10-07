class Transaccion < ApplicationRecord
	belongs_to :user
	belongs_to :mantenimientos
end

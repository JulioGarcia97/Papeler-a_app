class Mantenimiento < ApplicationRecord
	belongs_to :user
	has_many :transacciones
	validates :codigo, presence: true, uniqueness: true
	validates :item, presence: true, uniqueness: true
	validates :sku, presence: true, length: {maximum: 20}
	validates :quantity, presence: true

end

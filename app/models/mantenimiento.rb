class Mantenimiento < ApplicationRecord
	belongs_to :user
	validates :item, presence: true, uniqueness: true
	validates :sku, presence: true, length: {maximum: 20}
	validates :quantity, presence: true
end

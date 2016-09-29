class TransaccionesController < ApplicationController
	before_action :authenticate_user!, only: [:index]
	layout "transaccion"
	def index
		@transacciones = Transaccion.all
	end

	def new
		@transaccion = Transaccion.new
	end

	def show
		
	end
end

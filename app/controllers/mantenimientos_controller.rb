class MantenimientosController < ApplicationController
	before_action :find_params, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_user!, only: [:index, :new, :edit]
	def index
		@mantenimientos = Mantenimiento.all
	end

	def new
		@mantenimiento = Mantenimiento.new
	end

	def create
		@mantenimiento = current_user.mantenimientos.new mantenimiento_params

		if @mantenimiento.save
			redirect_to @mantenimiento
		else
			render 'new'
		end
	end

	def show
		
	end

	def edit
	end

	def update
		if @mantenimiento.update mantenimiento_params
			redirect_to @mantenimiento
		else
			render 'edit'
		end
	end

	def destroy
		@mantenimiento.destroy
		redirect_to mantenimientos_path
	end

	private


	def mantenimiento_params
		params.require(:mantenimiento).permit(:codigo, :item, :sku, :minimum_quantity, :quantity, :status, :apartment, :users)
	end

	def find_params
		@mantenimiento = Mantenimiento.find(params[:id])
	end
end

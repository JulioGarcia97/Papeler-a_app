class SearchController < ApplicationController
  def create
  	palabra = "%#{params[:keyword]}%"

    @mantenimientos = Mantenimiento.where("item LIKE ? OR sku LIKE ?", palabra,palabra)

    
  	respond_to do |format|
  		format.html {redirect_to root_path}
  		format.json {render json: @mantenimientos}
  		format.js
  	end
  end
end

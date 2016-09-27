class AreasController < ApplicationController
  before_action :set_area, only: [:mostrar, :editar, :update, :eliminar]
  before_action :authenticate_usuario!, only:[:update,:mostrar,:index,:crear,:eliminar,:editar,:nuevo]
  layout "login" , :only => :indexfront
  def index
  	@areas = Area.paginate(:page => params[:page], :per_page => 10).order('id ASC')
  end
  def mostrar
  end


end

class HistorialsController < ApplicationController
  def index
  	@historials = Historial.paginate(:page => params[:page], :per_page => 10).order('id ASC')
  	@estado = Estado.select("nombre").where(:estado_id => params[:id]);
  end
  def editar
  end
end

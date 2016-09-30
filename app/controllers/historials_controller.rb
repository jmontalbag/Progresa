class HistorialsController < ApplicationController
  def index
  	@historials = Historial.paginate(:page => params[:page], :per_page => 10).order('id ASC')
  	@estado = Estado.select("Nombre").where(:estado_id => params[:id]);
  end
  def editar
  end

  def beneficiario_params
    params.require(:historial).permit(:usuario_id, :beneficiario_id, :estado_id, :objetivos_id)
  end
end

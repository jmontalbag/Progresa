class HistorialsController < ApplicationController
  def index
  	@historials = Historial.paginate(:page => params[:page], :per_page => 10).order('id ASC')
  end
end

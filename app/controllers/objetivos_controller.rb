class ObjetivosController < ApplicationController
  def index
  	@objetivos = Objetivo.paginate(:page => params[:page], :per_page => 10).order('id ASC')
  end

  def nuevo
  	@objetivo = Objetivo.new
  end

  def editar
  end

  def crear
    @objetivo = Objetivo.new(objetivo_params)
    respond_to do |format|
      if @objetivo.save
       format.html{redirect_to objetivos_url(@objetivo), notice:  'Objetivo guardado con exito!'}
      else
        format.html{render :nuevo}
      end
    end
  end

  def eliminar
    @objetivo.destroy
    respond_to do |format|
      format.html { redirect_to objetivos_url, notice: 'Objetivo eliminado con exito!' }
    end
  end

  def update
    respond_to do |format|
      if @objetivo.update(objetivo_params)
        format.html{redirect_to @objetivos, notice: 'Objetivo editado con exito!'}
      else
        format.html{render :edit}
      end
    end
  end

  private

  def set_objetivo
    @objetivo = Objetivo.find(params[:id])
    
  end

  def objetivo_params
    params.require(:objetivo).permit(:texto, :nombre, :clasificacion_id, :area_id)
  end
end

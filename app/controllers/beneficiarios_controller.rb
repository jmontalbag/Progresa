class BeneficiariosController < ApplicationController
  before_action :set_beneficiario, only: [:mostrar, :editar, :update, :eliminar]
  before_action :authenticate_usuario!, only:[:update,:mostrar,:index,:crear,:eliminar,:editar,:nuevo]
  layout "login" , :only => :indexfront
  def index
    @beneficiarios = Beneficiario.paginate(:page => params[:page], :per_page => 10).order('id ASC')
  end
def indexfront
end
  def nuevo
    @beneficiario = Beneficiario.new
  end

  def editar
  end

  def crear
    @beneficiario = Beneficiario.new(beneficiario_params)
    respond_to do |format|
      if @beneficiario.save
       format.html{redirect_to beneficiario_url(@beneficiario), notice:  'beneficiario Guardado Con Exito'}
      else
        format.html{render :nuevo}
      end
    end
  end


  def eliminar
    @beneficiario.destroy
    respond_to do |format|
      format.html { redirect_to beneficiarios_url, notice: 'beneficiario eliminado con Exito.' }
    end
  end

  def mostrar
  end

  def update
    respond_to do |format|
      if @beneficiario.update(beneficiario_params)
        format.html{redirect_to @beneficiario, notice: 'beneficiario Editado con Exito'}
      else
        format.html{render :edit}
      end
    end
  end

  private

  def set_beneficiario
    @beneficiario = Beneficiario.find(params[:id])
    
  end

  def beneficiario_params
    params.require(:beneficiario).permit(:nombre, :apellido, :rut, :fecha_nacimiento, :edad)
  end

end

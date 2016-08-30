class BeneficiariosController < ApplicationController
  before_action :set_beneficiario, only: [:mostrar, :editar, :update, :eliminar]

  def index
    @beneficiarios = Beneficiario.all
  end

  def nuevo
    @beneficiario = Beneficiario.new
  end

  def editar
  end

  def crear
    @beneficiario = beneficiario.new(beneficiario_params)
    respond_to do |format|
      if @beneficiario.save
       format.html{redirect_to categoria_url(@beneficiario), notice:  'beneficiario Guardado Con Exito'}
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

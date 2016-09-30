class UsuariosController < ApplicationController
  before_action :set_beneficiario, only: [:mostrar, :editar, :update, :eliminar]
  before_action :authenticate_usuario!, only:[:update,:mostrar,:index,:crear,:eliminar,:editar,:nuevo]
  def index
  	@usuarios = Usuario.paginate(:page => params[:page], :per_page => 10).order('id ASC')
  end

  def nuevo
  	@usuario = Usuario.new
  end

  def crear
    @usuario = Usuario.new(usuario_params)
    respond_to do |format|
      if @usuario.save
       format.html{redirect_to usuario_url(@usuario), notice:  'usuario Guardado Con Exito'}
      else
        format.html{render :nuevo}
      end
    end
  end

  def editar
  end

  def eliminar
  end

  def update
    respond_to do |format|
      if @usuario.update(usuario_params)
        format.html{redirect_to @usuario, notice: 'Usuario editado con exito!'}
      else
        format.html{render :edit}
      end
    end
  end

  private

  def set_usuario
    @usuario = Usuario.find(params[:id])
    
  end

  def usuario_params
    params.require(:usuario).permit(:nombre, :email, :rol_id)
  end
end

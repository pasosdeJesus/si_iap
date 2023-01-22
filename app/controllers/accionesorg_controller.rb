class AccionesorgController < Msip::ModelosController
  helper ::ApplicationHelper

  before_action :set_accionorg, 
    only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource  class: ::Accionorg

  def clase 
    "::Accionorg"
  end

  def atributos_index
    [
      :id,
      :orgsocial_ids,
      :fecha_localizada,
      :nombre,
      :descripcion,
      :hombres,
      :mujeres,
      :otros,
      :anexos
    ]
  end

  def atributos_show
    atributos_index
  end

  def atributos_form
    atributos_index - [:id]
  end

  def index_reordenar(registros)
    return registros.reorder(['accionorg.fecha DESC', 'accionorg.id'])
  end

  def new_modelo_path(o)
    return new_accionorg_path()
  end

  def genclase
    return 'F'
  end


  private

  def set_accionorg
    @registro = @accionorg = ::Accionorg.find(
      ::Accionorg.connection.quote_string(params[:id]).to_i
    )
  end


  def lista_params
    [
      :descripcion,
      :fecha_localizada,
      :hombres,
      :mujeres,
      :nombre,
      :otros,
      :orgsocial_ids => [],
      :accionorg_anexo_attributes => [
        :id,
        :id_accionorg, 
        :_destroy,
        :anexo_attributes => [
          :id, :descripcion, :adjunto, :_destroy
        ]
      ]
    ]
  end

  # No confiar parametros a Internet, sólo permitir lista blanca
  def accionorg_params
    params.require(:accionorg).permit(lista_params)
  end

end

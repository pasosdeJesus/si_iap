class ContextosController < Sip::ModelosController
  helper ::ApplicationHelper

  before_action :set_contexto, 
    only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource  class: ::Contexto

  def clase 
    "::Contexto"
  end

  def atributos_index
    [
      :id,
      :nombre, 
      :region_id, 
      :fechaini_localizada,
      :fechafin_localizada,
      :numorg
    ]
  end

  def atributos_form
    [
      :nombre, 
      :region_id, 
      :fechaini_localizada,
      :fechafin_localizada,
      :listadoorg,
      :listadoorgna,
      :listadoorgint,
      :politicoelectoral,
      :social,
      :listadoorgcivil,
      :listadoorgfp,
      :megaproyectosempresas,
      :economiainfraestructura,
      :figurasterritoriales,
      :recursosambientales,
      :listadocasos,
      :estructurasarmadas,
      :estadoacuerdo,
      :listadoacciones,
      :listadoaccioneso
    ]
  end

  def atributos_show
    [
      :id,
      :nombre, 
      :region_id, 
      :fechaini_localizada,
      :fechafin_localizada,
      :listadoorg,
      :listadoorgna,
      :listadoorgint,
      :politicoelectoral,
      :social,
      :listadoorgcivil,
      :listadoorgfp,
      :megaproyectosempresas,
      :economiainfraestructura,
      :figurasterritoriales,
      :recursosambientales,
      :listadocasos,
      :estructurasarmadas,
      :estadoacuerdo,
      :listadoacciones,
      :listadoaccioneso
    ]
  end


  def index_reordenar(registros)
    return registros.reorder(:id)
  end

  def new_modelo_path(o)
    return new_contexto_path()
  end

  def genclase
    return 'M'
  end


  private

  def set_contexto
    @registro = @contexto = ::Contexto.find(
      ::Contexto.connection.quote_string(params[:id]).to_i
    )
  end

  # No confiar parametros a Internet, sólo permitir lista blanca
  def contexto_params
    params.require(:contexto).permit(*atributos_form)
  end

end

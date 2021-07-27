# frozen_string_literal: true

require 'sivel2_gen/concerns/controllers/casos_controller'

module Sivel2Gen
  class CasosController < Heb412Gen::ModelosController

    include Sivel2Gen::Concerns::Controllers::CasosController

    before_action :set_caso, only: [:show, :edit, :update, :destroy]
    load_and_authorize_resource class: Sivel2Gen::Caso, 
      except: [:index, :show, :mapaosm, :update]

    include Sivel2Gen::Concerns::Controllers::CasosController

    def caso_params
      lp = lista_params - [:anexo_caso_attributes] +
        [ :anexo_caso_attributes => [
          :id,
          :id_caso,
          :fecha,
          :fecha_localizada,
          :_destroy,
          :sip_anexo_attributes => [
            :id, :descripcion, :carpeta, :adjunto, :_destroy
            ]
          ]
        ]
      params.require(:caso).permit(lp)
    end

  end
end

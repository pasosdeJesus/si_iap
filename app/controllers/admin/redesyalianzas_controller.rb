module Admin
  class RedesyalianzasController < Msip::Admin::BasicasController
    before_action :set_redyalianza, 
      only: [:show, :edit, :update, :destroy]
    load_and_authorize_resource  class: ::Redyalianza

    def clase 
      "::Redyalianza"
    end

    def set_redyalianza
      @basica = Redyalianza.find(params[:id])
    end

    def atributos_index
      [
        :id, 
        :nombre, 
        :observaciones, 
        :fechacreacion_localizada, 
        :habilitado
      ]
    end

    def genclase
      'F'
    end

    def redyalianza_params
      params.require(:redyalianza).permit(*atributos_form)
    end

  end
end

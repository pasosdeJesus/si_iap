module Admin
  class MedidasproteccionController < Msip::Admin::BasicasController
    before_action :set_medidaproteccion, 
      only: [:show, :edit, :update, :destroy]
    load_and_authorize_resource  class: ::Medidaproteccion

    def clase 
      "::Medidaproteccion"
    end

    def set_medidaproteccion
      @basica = Medidaproteccion.find(params[:id])
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

    def medidaproteccion_params
      params.require(:medidaproteccion).permit(*atributos_form)
    end

  end
end

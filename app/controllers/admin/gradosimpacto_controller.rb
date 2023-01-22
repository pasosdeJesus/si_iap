module Admin
  class GradosimpactoController < Msip::Admin::BasicasController
    before_action :set_gradoimpacto, 
      only: [:show, :edit, :update, :destroy]
    load_and_authorize_resource  class: ::Gradoimpacto

    def clase 
      "::Gradoimpacto"
    end

    def set_gradoimpacto
      @basica = Gradoimpacto.find(params[:id])
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
      'M'
    end

    def gradoimpacto_params
      params.require(:gradoimpacto).permit(*atributos_form)
    end

  end
end

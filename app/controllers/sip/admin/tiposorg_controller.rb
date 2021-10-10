module Sip
  module Admin
    class TiposorgController < Sip::Admin::BasicasController
      before_action :set_tipoorg, 
        only: [:show, :edit, :update, :destroy]
      load_and_authorize_resource  class: Sip::Tipoorg

      def clase 
        "Sip::Tipoorg"
      end

      def set_tipoorg
        @basica = Sip::Tipoorg.find(params[:id])
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

      def tipoorg_params
        params.require(:tipoorg).permit(*atributos_form)
      end

    end
  end
end

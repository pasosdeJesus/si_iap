require_dependency "sip/concerns/controllers/orgsociales_controller"

module Sip
  class OrgsocialesController < Heb412Gen::ModelosController

    before_action :set_orgsocial, only: [:show, :edit, :update, :destroy]
    load_and_authorize_resource class: Sip::Orgsocial

    include Sip::Concerns::Controllers::OrgsocialesController

    def vistas_manejadas
      ['Orgsocial']
    end

    def atributos_index
      [ :id, 
        :grupoper_id,
        :acompanada,
        :telefono, 
        :web,
        :direccion
      ] + [ 
        :orgsocial_persona => [] 
      ] + [
        :habilitado
      ]
    end

    def atributos_show
      [ :id, 
        :grupoper_id,
        :acompanada,
        :telefono, 
        :web,
        :fax,
        :direccion
      ] + [ 
        :orgsocial_persona => [] 
      ] + [
        :sectororgsocial_ids,
        :zrc,
        :nivelorganzorc,
        :tipoorganzorc,
        :nit,
        :numasociados,
        :numasociadas,
        :carpeta
      ] + [
        :fechadeshabilitacion_localizada
      ]
    end

    def atributos_form
      [ :grupoper,
        :acompanada,
        :telefono, 
        :web,
        :fax,
        :direccion
      ] + [ 
        :orgsocial_persona => [] 
      ] + [
        :sectororgsocial_ids,
        :zrc,
        :nivelorganzorc,
        :tipoorganzorc,
        :nit,
        :numasociados,
        :numasociadas,
        :carpeta
      ] + [
        :fechadeshabilitacion_localizada
      ]
    end

    def lista_params 
      atributos_form - [:grupoper] +
        [ :zrc_id, 
          :nivelorganzorc_id,
          :tipoorganzorc_id,
          :grupoper_attributes => [
            :id,
            :nombre,
            :anotaciones ],
          :orgsocial_persona_attributes => [
            :id,
            :perfilorgsocial_id,
            :correo,
            :_destroy,
            :persona_attributes => [
              :id,
              :nombres,
              :apellidos,
            ]
          ]
        ] 
    end

    def orgsocial_params
      params.require(:orgsocial).permit(lista_params)
    end

  end 

end

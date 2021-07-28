# encoding: UTF-8
require_dependency "sip/concerns/controllers/orgsociales_controller"

module Sip
  class OrgsocialesController < Heb412Gen::ModelosController
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

    def new
      @registro = @orgsocial = Sip::Orgsocial.new
      @registro.grupoper_id = Sip::Grupoper.find_by_nombre('N').id
      @registro.save!(validate: false)
      redirect_to sip.edit_orgsocial_path(@registro)
    end

    def orgsocial_params
      params.require(:orgsocial).permit(lista_params)
    end

  end 

end

require_dependency "sip/concerns/controllers/orgsociales_controller"

module Sip
  class OrgsocialesController < Heb412Gen::ModelosController


    Sip::Municipio.conf_presenta_nombre_con_origen = true
    Sip::Departamento.conf_presenta_nombre_con_origen = true


    before_action :set_orgsocial, only: [:show, :edit, :update, :destroy]
    load_and_authorize_resource class: Sip::Orgsocial

    include Sip::Concerns::Controllers::OrgsocialesController

    def vistas_manejadas
      ['Orgsocial']
    end

    def atributos_index
      [ :id, 
        :grupoper_id,
        :region,
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
      r = [ :id, 
        :grupoper_id,
        :tipoorg,
        :region,
        :telefono, 
        :web,
        :fax,
        :direccion
      ] + [ 
        :orgsocial_persona => [] 
      ] + [
        :municipiotrab_ids,
      ]
      if @registro.tipoorg == 1 || @registro.tipoorg == 2
        r += [
          :sectororgsocial_ids,
          :medidaproteccion,
          :redyalianza,
          :zrc,
          :nivelorganzorc,
          :tipoorganzorc,
          :nit,
          :numasociados,
          :numasociadas,
          :carpeta
        ]
      end
      r += [
        :fechadeshabilitacion_localizada
      ]
      return r
    end

    def atributos_form
      [ :grupoper,
        :tipoorg,
        :telefono, 
        :web,
        :fax,
        :direccion
      ] + [ 
        :orgsocial_persona => [] 
      ] + [
        :municipiotrab_ids,
        :sectororgsocial_ids,
        :medidaproteccion,
        :redyalianza,
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

    def self.calcula_titulo(tipoorg_id, plural=true)
      if !plural && tipoorg_id>=1 && tipoorg_id<=5
        return Sip::Tipoorg.find(tipoorg_id).nombre.capitalize
      end
      case tipoorg_id
      when 1
        return 'Organizaciones acompañadas'
      when 2
        return 'Organizaciones (no acompañadas)'
      when 3
        return 'Instituciones civiles'
      when 4
        return 'Fuerza pública'
      when 5
        return 'Organismos internacionales'
      end
      return "Orgsocial desconocida"
    end

    def index
      c = Sip::Orgsocial.all
      if params && params[:filtro] && params[:filtro][:bustipoorg_id]
        c = c.where(
          tipoorg_id: params[:filtro][:bustipoorg_id].to_i
        )
        @titulo = Sip::OrgsocialesController::calcula_titulo(
          params[:filtro][:bustipoorg_id].to_i, true)
      end
      super(c)
    end

    def nuevo_intermedio(registro)
      @titulo = "Nueva Organización (no acompañada)"
      if params && params[:filtro] && params[:filtro][:bustipoorg_id]
        t = params[:filtro][:bustipoorg_id].to_i
        nueva = "Nueva "
        if t == 5
          nueva = "Nuevo "
        end
        @titulo = nueva + Sip::OrgsocialesController::calcula_titulo(t, false)
        registro.tipoorg_id = (t>=1 && t<=5) ? t : 2
      end
    end

    def editar_intermedio(registro, usuario_actual_id)
      @titulo = "Editar Organización (no acompañada)"
      if registro.tipoorg
        @titulo = "Editar " + Sip::OrgsocialesController::calcula_titulo(
          registro.tipoorg.id, false)
      end

      return true
    end


    def presentar_intermedio(registro, usuario_actual_id)
      @titulo = "Organización (no acompañada)"
      if registro.tipoorg
        @titulo = Sip::OrgsocialesController::calcula_titulo(
          registro.tipoorg.id, false)
      end
    end

    def lista_params 
      atributos_form - [:grupoper,  :municipiotrab_ids, :sectororgsocial_ids] +
        [ :zrc_id, 
          :nivelorganzorc_id,
          :medidaproteccion_id,
          :redyalianza_id,
          :tipoorg_id,
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
          ],
          :municipiotrab_ids => [],
          :sectororgsocial_ids => []
        ] 
    end

    def orgsocial_params
      params.require(:orgsocial).permit(lista_params)
    end

  end 

end

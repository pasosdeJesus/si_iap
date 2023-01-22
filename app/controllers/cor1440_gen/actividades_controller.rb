require_dependency "cor1440_gen/concerns/controllers/actividades_controller"

module Cor1440Gen
  class ActividadesController < Heb412Gen::ModelosController

    include Cor1440Gen::Concerns::Controllers::ActividadesController

    before_action :set_actividad, 
      only: [:show, :edit, :update, :destroy],
      exclude: [:contar]
    load_and_authorize_resource class: Cor1440Gen::Actividad

    def update
      # Procesar ubicacionespre de migración
      if actividad_params[:ubicacionpre_pais_id] && actividad_params[:ubicacionpre_pais_id] != ''
        @registro.ubicacionpre_id = Msip::Ubicacionpre::buscar_o_agregar(
          actividad_params[:ubicacionpre_pais_id], 
          actividad_params[:ubicacionpre_departamento_id],
          actividad_params[:ubicacionpre_municipio_id], 
          actividad_params[:ubicacionpre_clase_id],
          actividad_params[:ubicacionpre_lugar], 
          actividad_params[:ubicacionpre_sitio], 
          actividad_params[:ubicacionpre_tsitio_id],
          actividad_params[:ubicacionpre_latitud_localizado].a_decimal_nolocalizado, 
          actividad_params[:ubicacionpre_longitud_localizado].a_decimal_nolocalizado
        )
        begin
          @registro.save!(validate: false)
        rescue e
        end
      end
      update_gen
    end

    def atributos_show
      [ 
        :id, 
        :fecha_localizada, 
        :nombre, 
        :responsable,
        :proyectofinanciero,
        :actividadpf, 
        :objetivo,
        :respuestafor,
        :orgsocial,
        :listadoasistencia,
        :poblacion,
        :anexos,
        :observacion,
        :gradoimpacto
      ]
    end

    def atributos_index
      [ 
        :actividadpf, 
        :id, 
        :fecha_localizada, 
        :nombre, 
        :responsable,
        :proyectofinanciero,
        :objetivo,
        :resultado,
        :poblacion_hombres_r,
        :poblacion_mujeres_r,
        :poblacion_sinsexo,
        :poblacion_total,
        :etiqueta_ids,
        :anexos
      ]
    end

    def atributos_form
      atributos_show - [:id, 'id', :actividadpf]
    end

    def edit
      edit_cor1440_gen
      render layout: 'application'
    end

    def destroy
      aobs = ActividadObservacion.where(actividad_id: @actividad.id)
      aobs.each do |ao|
        ao.destroy!
      end
      @actividad.destroy!
      redirect_to actividades_path,  :flash => { :success => "Actividad eliminada!" }
    end

    def lista_params
      lista_params_cor1440_gen + 
        [
          :gradoimpacto_id,
          :ubicacionpre_clase_id,
          :ubicacionpre_departamento_id,
          :ubicacionpre_latitud_localizado,
          :ubicacionpre_longitud_localizado,
          :ubicacionpre_lugar,
          :ubicacionpre_municipio_id,
          :ubicacionpre_pais_id,
          :ubicacionpre_sitio,
          :ubicacionpre_tsitio_id,
      ] + [
          etiqueta_ids: []
      ]
    end


  end
end

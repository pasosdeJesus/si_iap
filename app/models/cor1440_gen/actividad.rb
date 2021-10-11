require 'cor1440_gen/concerns/models/actividad'
require 'sip/accesores_ubicacionpre'

module Cor1440Gen
  class Actividad < ActiveRecord::Base
    include Cor1440Gen::Concerns::Models::Actividad
    include Sip::Localizacion

    extend Sip::AccesoresUbicacionpre

    accesores_ubicacionpre :ubicacionpre
    flotante_localizado :ubicacionpre_latitud
    flotante_localizado :ubicacionpre_longitud

    attr_accessor :region_id

    belongs_to :region, 
      class_name: 'Sivel2Gen::Region',
      foreign_key: 'region_id', 
      optional: true

    belongs_to :gradoimpacto, optional: true

    belongs_to :ubicacionpre, class_name: '::Sip::Ubicacionpre',
      foreign_key: 'ubicacionpre_id', optional: true


    has_and_belongs_to_many :etiqueta, 
      class_name: 'Sip::Etiqueta',
      foreign_key: 'actividad_id',
      association_foreign_key: 'etiqueta_id',
      join_table: 'cor1440_gen_actividad_etiqueta'

    has_many :actividad_observacion, dependent: :delete_all,
      class_name: 'ActividadObservacion',
      foreign_key: 'actividad_id'
    has_many :observacion, through: :actividad_observacion, 
      dependent: :delete_all, class_name: 'Observacion'
    accepts_nested_attributes_for :observacion,
      allow_destroy: true, reject_if: :all_blank
    accepts_nested_attributes_for :actividad_observacion,
      allow_destroy: true, reject_if: :all_blank


    def region_id
      r = Sivel2Gen::Region::calcula_de_depmun(
        nil, self.municipiotrab_id
      )
      return r ? r.id : nil
    end


    def presenta(atr)
      total= 0
      case atr.to_s
      when 'poblacion_total'
        total = poblacion_hombres_r_solore +
            poblacion_mujeres_r_solore +
            poblacion_sinsexo_solore
        return total
      end
      presenta_actividad(atr)
    end
  end
end

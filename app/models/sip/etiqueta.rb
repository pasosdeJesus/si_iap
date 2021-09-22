require 'sip/concerns/models/etiqueta'

module Sip
  class Etiqueta < ActiveRecord::Base
    include Sip::Concerns::Models::Etiqueta

    has_and_belongs_to_many :actividad, 
      class_name: 'Cor1440Gen::Actividad',
      foreign_key: 'etiqueta_id',
      association_foreign_key: 'actividad_id',
      join_table: 'cor1440_gen_actividad_etiqueta'

  end
end

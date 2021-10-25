require 'cor1440_gen/concerns/models/orgsocial'

module Sip
  class Orgsocial < ActiveRecord::Base
    include Cor1440Gen::Concerns::Models::Orgsocial

    attr_accessor :region_id

    attr_accessor :bustipoorg_id

    belongs_to :zrc, optional: true
    belongs_to :nivelorganzorc, optional: true
    belongs_to :tipoorg, class_name: 'Sip::Tipoorg',
      foreign_key: 'tipoorg_id', optional: false
    belongs_to :medidaproteccion, optional: true
    belongs_to :redyalianza, optional: true
    belongs_to :tipoorganzorc, optional: true

    belongs_to :region, 
      class_name: 'Sivel2Gen::Region',
      foreign_key: 'region_id', 
      optional: true

    has_and_belongs_to_many :municipiotrab, 
      class_name: 'Sip::Municipio',
      foreign_key: "orgsocial_id", 
      validate: true, 
      association_foreign_key: "municipiotrab_id",
      join_table: 'sip_municipiotrab_orgsocial'

    def region_id
      r = nil
      if self.municipiotrab_ids.count > 0
        r = Sivel2Gen::Region::calcula_de_depmun(
          nil,
          self.municipiotrab_ids[0]
        )
      end
      return r ? r.id : nil
    end

    validates :nit, length: { maximum: 500 }
    validates :carpeta, length: { maximum: 5000 }

    scope :filtro_region, lambda { |r|
      where("sip_orgsocial.id IN (SELECT orgsocial_id FROM
            sip_municipiotrab_orgsocial WHERE
            region_de_depmun(NULL, municipiotrab_id::integer)=?)", r)
    }

  end
end

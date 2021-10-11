require 'cor1440_gen/concerns/models/orgsocial'

module Sip
  class Orgsocial < ActiveRecord::Base
    include Cor1440Gen::Concerns::Models::Orgsocial

    belongs_to :zrc, optional: true
    belongs_to :nivelorganzorc, optional: true
    belongs_to :tipoorg, class_name: 'Sip::Tipoorg',
      foreign_key: 'tipoorg_id', optional: false
    belongs_to :medidaproteccion, optional: true
    belongs_to :redyalianza, optional: true
    belongs_to :tipoorganzorc, optional: true
    validates :nit, length: { maximum: 500 }
    validates :carpeta, length: { maximum: 5000 }

  end
end


require 'msip/concerns/models/municipio'

module Msip
  class Municipio < ActiveRecord::Base
    include Msip::Concerns::Models::Municipio

    has_and_belongs_to_many :orgsocialtrab, 
      class_name: 'Msip::Orgsocial',
      foreign_key: "municipiotrab_id", 
      validate: false, 
      association_foreign_key: "orgsocial_id",
      join_table: 'msip_municipiotrab_orgsocial'

  end
end

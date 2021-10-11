
require 'sip/concerns/models/municipio'

module Sip
  class Municipio < ActiveRecord::Base
    include Sip::Concerns::Models::Municipio

    has_and_belongs_to_many :orgsocialtrab, 
      class_name: 'Sip::Orgsocial',
      foreign_key: "municipiotrab_id", 
      validate: false, 
      association_foreign_key: "orgsocial_id",
      join_table: 'sip_municipiotrab_orgsocial'

  end
end

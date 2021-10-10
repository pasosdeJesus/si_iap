module Sip
  class Tipoorg < ActiveRecord::Base
    include Sip::Basica

    has_many :orgsocial, foreign_key: 'tipoorg_id', validate: true,
      class_name: 'Sip:Orgsocial'

  end
end

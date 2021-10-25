module Sip
  class Tipoorg < ActiveRecord::Base
    include Sip::Basica

    ORGACOMP   = 1
    ORGNOACOMP = 2
    ORGCIVIL  = 3
    ORGFP = 4
    ORGINT     = 5
    has_many :orgsocial, foreign_key: 'tipoorg_id', validate: true,
      class_name: 'Sip::Orgsocial'

  end
end

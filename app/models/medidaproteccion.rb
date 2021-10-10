class Medidaproteccion < ActiveRecord::Base
  include Sip::Basica

  has_many :orgsocial, foreign_key: 'medidaproteccion_id', validate: true,
    class_name: 'Sip::Orgsocial'

end

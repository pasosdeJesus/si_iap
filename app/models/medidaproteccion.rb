class Medidaproteccion < ActiveRecord::Base
  include Msip::Basica

  has_many :orgsocial, foreign_key: 'medidaproteccion_id', validate: true,
    class_name: 'Msip::Orgsocial'

end

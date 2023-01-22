class Redyalianza < ActiveRecord::Base
  include Msip::Basica

  has_many :orgsocial, foreign_key: 'redyalianza_id', validate: true,
    class_name: 'Msip::Orgsocial'
end

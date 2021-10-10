class Redyalianza < ActiveRecord::Base
  include Sip::Basica

  has_many :orgsocial, foreign_key: 'redyalianza_id', validate: true,
    class_name: 'Sip::Orgsocial'
end

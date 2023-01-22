class Coyonturaregional < ActiveRecord::Base
	include Msip::Modelo
  include Msip::Localizacion

  belongs_to :region, class_name: 'Sivel2Gen::Region', 
    foreign_key: 'region_id', optional: false

  campofecha_localizado :fechaini
  campofecha_localizado :fechafin

  validates :nombre, length: {maximum: 254}, presence: true
  validates :region_id, presence: true
  validates :fechaini, presence: true
  validates :fechafin, presence: true
  validates :politicoelectoral, length: {maximum: 5000}
  validates :social, length: {maximum: 5000}
  validates :megaproyectosempresas, length: {maximum: 5000}
  validates :economiainfraestructura, length: {maximum: 5000}
  validates :figurasterritoriales, length: {maximum: 5000}
  validates :recursosambientales, length: {maximum: 5000}
  validates :estructurasarmadas, length: {maximum: 5000}
  validates :estadoacuerdo, length: {maximum: 5000}

end

class Accionorg < ActiveRecord::Base
	include Sip::Modelo
  include Sip::Localizacion

  has_and_belongs_to_many :orgsocial,
    class_name: 'Sip::Orgsocial',
    foreign_key: 'accionorg_id',
    association_foreign_key: 'orgsocial_id',
    join_table: 'accionorg_orgsocial'

  has_many :accionorg_anexo, foreign_key: "accionorg_id",
    validate: true, dependent: :destroy,
    class_name: '::AccionorgAnexo',
    inverse_of: :accionorg
  accepts_nested_attributes_for :accionorg_anexo,
    allow_destroy: true, reject_if: :all_blank

  has_and_belongs_to_many :anexo,
    class_name: 'Sip::Orgsocial',
    foreign_key: 'accionorg_id',
    association_foreign_key: 'orgsocial_id',
    join_table: 'accionorg_orgsocial'

  campofecha_localizado :fecha

  validates :fecha, presence: true
  validates :nombre, length: { maximum: 1024}, presence: true
  validates :descripcion, length: {maximum: 5000}


  def presenta_nombre
    "#{nombre}"
  end
end

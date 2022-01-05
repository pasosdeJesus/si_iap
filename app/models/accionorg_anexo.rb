class AccionorgAnexo < ActiveRecord::Base

  belongs_to :accionorg, class_name: '::Accionorg',
    foreign_key: "accionorg_id", validate: true,
    inverse_of: :accionorg_anexo, optional: false
  belongs_to :anexo, class_name: 'Sip::Anexo',
    foreign_key: "anexo_id", validate: true, optional: false
  accepts_nested_attributes_for :anexo, reject_if: :all_blank

  validates :accionorg_id, presence: true
  validates :anexo_id, presence: true
end


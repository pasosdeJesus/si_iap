class AjustaOrgsocialIap2 < ActiveRecord::Migration[6.1]
  def change
    remove_column :sip_orgsocial, :acompanada, :boolean
    add_column :sip_orgsocial, :tipoorg_id, :integer, null: false, default: 2
    add_foreign_key :sip_orgsocial, :sip_tipoorg, column: :tipoorg_id
    add_column :sip_orgsocial, :medidaproteccion_id, :integer
    add_foreign_key :sip_orgsocial, :medidaproteccion, column: :medidaproteccion_id
    add_column :sip_orgsocial, :redyalianza_id, :integer
    add_foreign_key :sip_orgsocial, :redyalianza, column: :redyalianza_id
  end
end

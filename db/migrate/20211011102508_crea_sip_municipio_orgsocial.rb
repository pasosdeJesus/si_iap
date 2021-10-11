class CreaSipMunicipioOrgsocial < ActiveRecord::Migration[6.1]
  def change
    create_join_table(:sip_municipio, :sip_orgsocial, 
                      table_name: 'sip_municipiotrab_orgsocial')
    add_foreign_key :sip_municipiotrab_orgsocial, :sip_municipio
    add_foreign_key :sip_municipiotrab_orgsocial, :sip_orgsocial
    rename_column :sip_municipiotrab_orgsocial, :sip_orgsocial_id,
      :orgsocial_id
    rename_column :sip_municipiotrab_orgsocial, :sip_municipio_id,
      :municipiotrab_id
  end
end

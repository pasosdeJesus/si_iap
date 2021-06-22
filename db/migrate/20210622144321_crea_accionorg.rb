class CreaAccionorg < ActiveRecord::Migration[6.1]
  def change
    create_table :accionorg do |t|
      t.date    :fecha, null: false
      t.string  :nombre, null: false, limit: 1024
      t.string  :descripcion, limit: 5000
      t.integer :hombres
      t.integer :mujeres
      t.integer :otros
    end
    create_join_table :accionorg, :sip_orgsocial,
      table_name: 'accionorg_orgsocial'
    add_foreign_key :accionorg_orgsocial, :accionorg
    add_foreign_key :accionorg_orgsocial, :sip_orgsocial
    rename_column :accionorg_orgsocial, :sip_orgsocial_id,
      :orgsocial_id
    create_join_table :accionorg, :sip_anexo, 
      table_name: 'accionorg_anexo'
    add_foreign_key :accionorg_anexo, :accionorg
    add_foreign_key :accionorg_anexo, :sip_anexo
    rename_column :accionorg_anexo, :sip_anexo_id,
      :anexo_id
  end
end

class CreaActividadEtiqueta < ActiveRecord::Migration[6.1]
  def change
    create_join_table :cor1440_gen_actividad, :sip_etiqueta,
      table_name: 'cor1440_gen_actividad_etiqueta'
    add_foreign_key :cor1440_gen_actividad_etiqueta, :cor1440_gen_actividad
    add_foreign_key :cor1440_gen_actividad_etiqueta, :sip_etiqueta
    rename_column :cor1440_gen_actividad_etiqueta, :sip_etiqueta_id,
      :etiqueta_id
    rename_column :cor1440_gen_actividad_etiqueta, :cor1440_gen_actividad_id,
      :actividad_id
  end
end

class GradoimpactoEnActividad < ActiveRecord::Migration[6.1]
  def change
    add_column :cor1440_gen_actividad, :gradoimpacto_id, :integer
    add_foreign_key :cor1440_gen_actividad, :gradoimpacto
  end
end

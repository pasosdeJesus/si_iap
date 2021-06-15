class AgregaAcompOrg < ActiveRecord::Migration[6.1]
  def change
    add_column :sip_orgsocial, :acompanada, :bool
  end
end

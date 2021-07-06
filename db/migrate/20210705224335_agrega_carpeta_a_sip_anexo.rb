class AgregaCarpetaASipAnexo < ActiveRecord::Migration[6.1]
  def change
    add_column :sip_anexo, :carpeta, :string
  end
end

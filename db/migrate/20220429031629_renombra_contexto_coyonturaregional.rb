class RenombraContextoCoyonturaregional < ActiveRecord::Migration[7.0]
  def change
    rename_table :contexto, :coyonturaregional
  end
end

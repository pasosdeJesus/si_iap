class TiposcomunesPoromision < ActiveRecord::Migration[6.1]
  def up
    execute <<-SQL
      UPDATE cor1440_gen_proyectofinanciero SET 
        poromision='t',
        titulo='ACCIONES COMUNES DE IAP'
        WHERE id=106;
    SQL
  end
  def down
    execute <<-SQL
      UPDATE cor1440_gen_proyectofinanciero SET 
        poromision=NULL, 
        titulo=NULL
        WHERE id=106;
    SQL
  end
end

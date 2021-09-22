class CreateGradoimpacto < ActiveRecord::Migration[6.1]

  include Sip::MigracionHelper

  def up
    create_table :gradoimpacto do |t|
      t.string :nombre, limit: 500, null: false
      t.string :observaciones, limit: 5000
      t.date :fechacreacion, null: false
      t.date :fechadeshabilitacion

      t.timestamps
    end
    cambiaCotejacion('gradoimpacto', 'nombre', 500, 'es_co_utf_8')
    execute <<-SQL
    INSERT INTO gradoimpacto (id, nombre, 
          fechacreacion, created_at, updated_at) VALUES (
          1, 'SIN INFORMACIÓN',
          '2021-09-21', '2021-09-21', '2021-09-21');
    INSERT INTO gradoimpacto (id, nombre, 
          fechacreacion, created_at, updated_at) VALUES (
          2, 'BAJO',
          '2021-09-21', '2021-09-21', '2021-09-21');
    INSERT INTO gradoimpacto (id, nombre, 
          fechacreacion, created_at, updated_at) VALUES (
          3, 'MEDIO',
          '2021-09-21', '2021-09-21', '2021-09-21');
    INSERT INTO gradoimpacto (id, nombre, 
          fechacreacion, created_at, updated_at) VALUES (
          4, 'ALTO',
          '2021-09-21', '2021-09-21', '2021-09-21');

    SELECT pg_catalog.setval('public.gradoimpacto_id_seq', 100, true);
    SQL
  end

  def down
    drop_table :gradoimpacto
  end
end

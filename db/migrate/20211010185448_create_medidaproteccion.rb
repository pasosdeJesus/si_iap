class CreateMedidaproteccion < ActiveRecord::Migration[6.1]
  include Sip::SqlHelper
  def up
    create_table :medidaproteccion do |t|
      t.string :nombre, limit: 500, null: false
      t.string :observaciones, limit: 5000
      t.date :fechacreacion, null: false
      t.date :fechadeshabilitacion

      t.timestamps
    end
    cambiaCotejacion('medidaproteccion', 'nombre', 500, 'es_co_utf_8')
    execute <<-SQL
      INSERT INTO medidaproteccion (id, nombre, 
        fechacreacion, created_at, updated_at) VALUES (
        1, 'JAC ACTIVA',
        '2021-10-10', '2021-10-10', '2021-10-10');
      INSERT INTO medidaproteccion (id, nombre, 
        fechacreacion, created_at, updated_at) VALUES (
        2, 'JAC NO ACTIVA',
        '2021-10-10', '2021-10-10', '2021-10-10');
      INSERT INTO medidaproteccion (id, nombre, 
        fechacreacion, created_at, updated_at) VALUES (
        3, 'RED DE DDHHH',
        '2021-10-10', '2021-10-10', '2021-10-10');
      INSERT INTO medidaproteccion (id, nombre, 
        fechacreacion, created_at, updated_at) VALUES (
        4, 'CASA DE DDHH',
        '2021-10-10', '2021-10-10', '2021-10-10');
      INSERT INTO medidaproteccion (id, nombre, 
        fechacreacion, created_at, updated_at) VALUES (
        5, 'CASA DE REFUGIO HUMANITARIO',
        '2021-10-10', '2021-10-10', '2021-10-10');
      INSERT INTO medidaproteccion (id, nombre, 
        fechacreacion, created_at, updated_at) VALUES (
        6, 'RUTA DE PROTECCIÓN COLECTIVA DE LA UNP',
        '2021-10-10', '2021-10-10', '2021-10-10');

      SELECT setval('medidaproteccion_id_seq', 100);
    SQL
  end
  def down
    drop_table :medidaproteccion
  end
end

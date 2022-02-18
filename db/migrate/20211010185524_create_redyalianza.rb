class CreateRedyalianza < ActiveRecord::Migration[6.1]
  include Sip::SqlHelper
  def change
    create_table :redyalianza do |t|
      t.string :nombre, limit: 500, null: false
      t.string :observaciones, limit: 5000
      t.date :fechacreacion, null: false
      t.date :fechadeshabilitacion

      t.timestamps
    end
    cambiaCotejacion('redyalianza', 'nombre', 500, 'es_co_utf_8')
    execute <<-SQL
      INSERT INTO redyalianza (id, nombre, 
        fechacreacion, created_at, updated_at) VALUES (
        1, 'INSTITUCIONES',
        '2020-08-05', '2020-08-05', '2020-08-05');
      INSERT INTO redyalianza (id, nombre, 
        fechacreacion, created_at, updated_at) VALUES (
        2, 'CON OTRAS ORGANIZACIONES DE LA REGIÓN',
        '2020-08-05', '2020-08-05', '2020-08-05');
      INSERT INTO redyalianza (id, nombre, 
        fechacreacion, created_at, updated_at) VALUES (
        3, 'CON PLATAFORMAS REGIONALES Y NACIONALES',
        '2020-08-05', '2020-08-05', '2020-08-05');
      SELECT setval('redyalianza_id_seq', 100);
    SQL
  end
  def down
    drop_table :redyalianza
  end
end

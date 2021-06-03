class RegionesIap < ActiveRecord::Migration[6.1]
  def up
    execute <<-SQL
      UPDATE sivel2_gen_region SET fechadeshabilitacion='2021-06-03' 
        WHERE fechadeshabilitacion IS NULL AND id<=11;
      INSERT INTO sivel2_gen_region 
        (id, nombre, fechacreacion, created_at, updated_at) VALUES
        (20, 'CATATUMBO', '2021-06-03', '2021-06-03', '2021-06-03');
      INSERT INTO sivel2_gen_region 
        (id, nombre, fechacreacion, created_at, updated_at) VALUES
        (21, 'MAGDALENA MEDIO', '2021-06-03', '2021-06-03', '2021-06-03');
      INSERT INTO sivel2_gen_region 
        (id, nombre, fechacreacion, created_at, updated_at) VALUES 
        (22, 'SUR DE BOLIVAR', '2021-06-03', '2021-06-03', '2021-06-03');
      INSERT INTO sivel2_gen_region 
        (id, nombre, fechacreacion, created_at, updated_at) VALUES 
        (23, 'BAJO CAUCA', '2021-06-03', '2021-06-03', '2021-06-03');
      INSERT INTO sivel2_gen_region 
        (id, nombre, fechacreacion, created_at, updated_at) VALUES 
        (24, 'META', '2021-06-03', '2021-06-03', '2021-06-03');
      INSERT INTO sivel2_gen_region 
        (id, nombre, fechacreacion, created_at, updated_at) VALUES 
        (25, 'GUAVIARE', '2021-06-03', '2021-06-03', '2021-06-03');
      INSERT INTO sivel2_gen_region 
        (id, nombre, fechacreacion, created_at, updated_at) VALUES 
        (26, 'SUR DE CÓRDOBA', '2021-06-03', '2021-06-03', '2021-06-03');
    SQL
  end
  def down
    execute <<-SQL
      DELETE FROM sivel2_gen_region WHERE id>=20 AND id<=26;
      UPDATE sivel2_gen_region SET fechadeshabilitacion=NULL WHERE
        id<=11;
    SQL
  end
end

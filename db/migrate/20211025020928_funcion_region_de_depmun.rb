class FuncionRegionDeDepmun < ActiveRecord::Migration[6.1]
  def up
    execute <<-SQL
      CREATE OR REPLACE FUNCTION public.region_de_depmun(
        pdepartamento_id integer, pmunicipio_id integer) RETURNS integer
      LANGUAGE plpgsql
      AS $$
      BEGIN
        RETURN CASE 
        WHEN pdepartamento_id IS NOT NULL AND
          (SELECT COUNT(*) FROM sivel2_gen_departamento_region
            WHERE departamento_id=pdepartamento_id)>0 THEN 
          (SELECT region_id FROM sivel2_gen_departamento_region
            WHERE departamento_id=pdepartamento_id LIMIT 1)
        WHEN pmunicipio_id IS NOT NULL AND
          (SELECT COUNT(*) FROM sivel2_gen_municipio_region
            WHERE municipio_id=pmunicipio_id)>0 THEN
          (SELECT region_id FROM sivel2_gen_municipio_region
            WHERE municipio_id=pmunicipio_id LIMIT 1)
        WHEN pmunicipio_id IS NOT NULL  AND
          (SELECT COUNT(*) FROM sip_municipio
            WHERE id=pmunicipio_id)>0 THEN 
          (SELECT region_id FROM sivel2_gen_departamento_region 
            WHERE departamento_id IN (SELECT id_departamento FROM
              sip_municipio WHERE id=pmunicipio_id) LIMIT 1)
         ELSE
           NULL
         END;
      END; 
      $$;
    SQL
  end

  def down
    execute <<-SQL
      DROP FUNCTION public.region_de_depmun;
    SQL
  end
end

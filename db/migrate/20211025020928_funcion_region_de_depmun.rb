class FuncionRegionDeDepmun < ActiveRecord::Migration[6.1]
  def up
    execute <<-SQL
      CREATE OR REPLACE FUNCTION public.region_de_depmun(
        pdepartamento_id bigint, pmunicipio_id bigint) RETURNS bigint
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

      CREATE OR REPLACE FUNCTION public.region_de_orgsocial(
        porgsocial_id bigint) RETURNS bigint
      LANGUAGE plpgsql
      AS $$
      BEGIN
        RETURN region_de_depmun(NULL, (SELECT MIN(municipiotrab_id) 
          FROM sip_municipiotrab_orgsocial WHERE orgsocial_id=porgsocial_id));
      END; 
      $$;

      CREATE OR REPLACE FUNCTION public.region_de_caso(
        pcaso_id bigint) RETURNS bigint
      LANGUAGE plpgsql
      AS $$
      BEGIN
        RETURN region_de_depmun(
          (SELECT u.id_departamento FROM sivel2_gen_caso AS c
            LEFT JOIN sip_ubicacion AS u ON c.id=u.id_caso 
            WHERE c.id=pcaso_id),
          (SELECT u.id_municipio FROM sivel2_gen_caso AS c
            LEFT JOIN sip_ubicacion AS u ON c.id=u.id_caso 
            WHERE c.id=pcaso_id)
        );
      END; 
      $$;

      CREATE OR REPLACE FUNCTION public.region_de_actividad(
        pactividad_id bigint) RETURNS bigint
      LANGUAGE plpgsql
      AS $$
      BEGIN
        RETURN region_de_depmun(
          (SELECT u.departamento_id FROM cor1440_gen_actividad AS a
            LEFT JOIN sip_ubicacionpre AS u ON a.ubicacionpre_id=u.id
            WHERE a.id=pactividad_id),
          (SELECT u.municipio_id FROM cor1440_gen_actividad AS a
            LEFT JOIN sip_ubicacionpre AS u ON a.ubicacionpre_id=u.id
            WHERE a.id=pactividad_id)
        );
      END; 
      $$;

    SQL
  end

  def down
    execute <<-SQL
      DROP FUNCTION IF EXISTS public.region_de_actividad;
      DROP FUNCTION IF EXISTS public.region_de_caso;
      DROP FUNCTION IF EXISTS public.region_de_orgsocial;
      DROP FUNCTION IF EXISTS public.region_de_depmun;
    SQL
  end
end

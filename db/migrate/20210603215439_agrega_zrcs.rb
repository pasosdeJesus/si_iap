class AgregaZrcs < ActiveRecord::Migration[6.1]
  def up
    execute <<-SQL
      INSERT INTO public.zrc (id, nombre, estadozrc_id, carpeta, geojson, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at, nresolucion, fresolucion) VALUES (4, 'ZRC PERLA AMAZÓNICA', 1, '', '', '', '2020-01-14', NULL, '2020-01-14 00:00:00', '2020-11-24 14:33:06.27107', NULL, NULL);
      INSERT INTO public.zrc (id, nombre, estadozrc_id, carpeta, geojson, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at, nresolucion, fresolucion) VALUES (1, 'ZRC GUAVIARE', 1, '', '', '', '2020-01-14', NULL, '2020-01-14 00:00:00', '2020-11-24 14:33:15.641535', NULL, NULL);
      INSERT INTO public.zrc (id, nombre, estadozrc_id, carpeta, geojson, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at, nresolucion, fresolucion) VALUES (2, 'ZRC PATO-BALSILLAS', 1, '', '', '', '2020-01-14', NULL, '2020-01-14 00:00:00', '2020-11-24 14:33:25.696515', NULL, NULL);
      INSERT INTO public.zrc (id, nombre, estadozrc_id, carpeta, geojson, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at, nresolucion, fresolucion) VALUES (3, 'ZRC ARENAL MORALES', 1, '', '', '', '2020-01-14', NULL, '2020-01-14 00:00:00', '2020-11-24 14:33:36.326012', NULL, NULL);
      INSERT INTO public.zrc (id, nombre, estadozrc_id, carpeta, geojson, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at, nresolucion, fresolucion) VALUES (5, 'ZRC CABRERA CUNDINAMARCA', 1, '', '', '', '2020-01-14', NULL, '2020-01-14 00:00:00', '2020-11-24 14:34:07.894381', NULL, NULL);
      INSERT INTO public.zrc (id, nombre, estadozrc_id, carpeta, geojson, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at, nresolucion, fresolucion) VALUES (6, 'ZRC VALLE DEL RÍO CIMITARRA', 1, '', '', '', '2020-01-14', NULL, '2020-01-14 00:00:00', '2020-11-24 14:34:19.734985', NULL, NULL);
      INSERT INTO public.zrc (id, nombre, estadozrc_id, carpeta, geojson, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at, nresolucion, fresolucion) VALUES (102, 'ZRC ARAUCA', 2, '', '', '', '2020-11-24', NULL, '2020-11-24 14:35:35.074573', '2020-11-24 14:35:35.074573', NULL, NULL);
      INSERT INTO public.zrc (id, nombre, estadozrc_id, carpeta, geojson, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at, nresolucion, fresolucion) VALUES (103, 'ZRC CATATUMBO', 2, '', '', '', '2020-11-24', NULL, '2020-11-24 14:35:55.926539', '2020-11-24 14:35:55.926539', NULL, NULL);
      INSERT INTO public.zrc (id, nombre, estadozrc_id, carpeta, geojson, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at, nresolucion, fresolucion) VALUES (104, 'ZRC CAUCA', 2, '', '', '', '2020-11-24', NULL, '2020-11-24 14:36:12.670971', '2020-11-24 14:36:12.670971', NULL, NULL);
      INSERT INTO public.zrc (id, nombre, estadozrc_id, carpeta, geojson, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at, nresolucion, fresolucion) VALUES (106, 'ZRC HUILA', 2, '', '', '', '2020-11-24', NULL, '2020-11-24 14:36:36.714333', '2020-11-24 14:36:36.714333', NULL, NULL);
      INSERT INTO public.zrc (id, nombre, estadozrc_id, carpeta, geojson, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at, nresolucion, fresolucion) VALUES (109, 'ZRC QUINDIO', 2, '', '', '', '2020-11-24', NULL, '2020-11-24 14:37:38.771284', '2020-11-24 14:37:38.771284', NULL, NULL);
      INSERT INTO public.zrc (id, nombre, estadozrc_id, carpeta, geojson, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at, nresolucion, fresolucion) VALUES (111, 'ZRC TULUÁ', 2, '', '', '', '2020-11-24', NULL, '2020-11-24 14:38:18.479293', '2020-11-24 14:38:18.479293', NULL, NULL);
      INSERT INTO public.zrc (id, nombre, estadozrc_id, carpeta, geojson, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at, nresolucion, fresolucion) VALUES (110, 'ZRC SUMAPAZ', 2, '', '', '', '2020-11-24', NULL, '2020-11-24 14:37:59.641871', '2020-11-26 18:21:02.887158', NULL, NULL);
      INSERT INTO public.zrc (id, nombre, estadozrc_id, carpeta, geojson, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at, nresolucion, fresolucion) VALUES (107, 'ZRC LOSADA', 2, '', '', '', '2020-11-24', NULL, '2020-11-24 14:36:52.207409', '2020-11-26 18:40:31.522826', NULL, NULL);
      INSERT INTO public.zrc (id, nombre, estadozrc_id, carpeta, geojson, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at, nresolucion, fresolucion) VALUES (105, 'ZRC GUEJAR', 2, '', '', '', '2020-11-24', NULL, '2020-11-24 14:36:24.373203', '2020-11-26 18:46:05.629354', NULL, NULL);
      INSERT INTO public.zrc (id, nombre, estadozrc_id, carpeta, geojson, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at, nresolucion, fresolucion) VALUES (101, 'ZRC MONTES DE MARIA POLIGONO 2', 1, '', '', '', '2020-04-03', NULL, '2020-04-03 16:44:06.962145', '2020-11-26 18:50:19.638153', NULL, NULL);
      INSERT INTO public.zrc (id, nombre, estadozrc_id, carpeta, geojson, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at, nresolucion, fresolucion) VALUES (108, 'ZRC PERIJÁ-CESAR', 2, '', '', '', '2020-11-24', NULL, '2020-11-24 14:37:16.534998', '2020-11-26 18:57:36.919919', NULL, NULL);

      SELECT pg_catalog.setval('public.zrc_id_seq', 200, true);
    SQL
  end

  def down
    execute <<-SQL
      DELETE FROM public.zrc WHERE id<=200;
    SQL
  end
end

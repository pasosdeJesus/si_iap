class CompletaBasicas < ActiveRecord::Migration[6.1]
  def up
    execute <<-SQL

      INSERT INTO public.tipoorganzorc (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (1, 'SIN INFORMACIÓN', NULL, '2021-06-03', NULL, '2021-06-03 00:00:00', '2021-06-03 00:00:00');
      INSERT INTO public.tipoorganzorc (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (2, 'SINDICAL', NULL, '2021-06-03', '2021-06-03', '2021-06-03 00:00:00', '2021-06-03 00:00:00');
      INSERT INTO public.tipoorganzorc (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (3, 'COOPERATIVA', NULL, '2021-06-03', NULL, '2021-06-03 00:00:00', '2021-06-03 00:00:00');
      INSERT INTO public.tipoorganzorc (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (4, 'PRODUCTIVA', NULL, '2021-06-03', '2021-06-03', '2021-06-03 00:00:00', '2021-06-03 00:00:00');
      INSERT INTO public.tipoorganzorc (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (5, 'CORPORACIÓN', NULL, '2021-06-03', NULL, '2021-06-03 00:00:00', '2021-06-03 00:00:00');
      INSERT INTO public.tipoorganzorc (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (6, 'ASOCIACIÓN', NULL, '2021-06-03', NULL, '2021-06-03 00:00:00', '2021-06-03 00:00:00');
      INSERT INTO public.tipoorganzorc (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (7, 'FUNDACIÓN', NULL, '2021-06-03', NULL, '2021-06-03 00:00:00', '2021-06-03 00:00:00');

      SELECT pg_catalog.setval('public.tipoorganzorc_id_seq', 100, true);


      INSERT INTO public.nivelorganzorc (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (1, 'SIN INFORMACIÓN', NULL, '2021-06-03', NULL, '2021-06-03 00:00:00', '2021-06-03 00:00:00');
      INSERT INTO public.nivelorganzorc (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (2, 'PRIMERO', NULL, '2021-06-03', NULL, '2021-06-03 00:00:00', '2021-06-03 00:00:00');
      INSERT INTO public.nivelorganzorc (id, nombre, observaciones, fechacreacion, fechadeshabilitacion, created_at, updated_at) VALUES (3, 'SEGUNDO', NULL, '2021-06-03', NULL, '2021-06-03 00:00:00', '2021-06-03 00:00:00');

      SELECT pg_catalog.setval('public.nivelorganzorc_id_seq', 100, true);

    SQL
  end
  def down
    execute <<-SQL
      DELETE FROM public.tipoorganzorc WHERE id<=7;
      DELETE FROM public.nivelorganzorc WHERE id<=3;
    SQL
  end
end

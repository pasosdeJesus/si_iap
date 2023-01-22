
INSERT INTO public.sivel2_gen_region (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (20, 'CATATUMBO', '2021-06-03', NULL, '2021-06-03 00:00:00', '2021-06-03 00:00:00', NULL);
INSERT INTO public.sivel2_gen_region (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (21, 'MAGDALENA MEDIO', '2021-06-03', NULL, '2021-06-03 00:00:00', '2021-06-03 00:00:00', NULL);
INSERT INTO public.sivel2_gen_region (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (22, 'SUR DE BOLIVAR', '2021-06-03', NULL, '2021-06-03 00:00:00', '2021-06-03 00:00:00', NULL);
INSERT INTO public.sivel2_gen_region (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (23, 'BAJO CAUCA', '2021-06-03', NULL, '2021-06-03 00:00:00', '2021-06-03 00:00:00', NULL);
INSERT INTO public.sivel2_gen_region (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (24, 'META', '2021-06-03', NULL, '2021-06-03 00:00:00', '2021-06-03 00:00:00', NULL);
INSERT INTO public.sivel2_gen_region (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (25, 'GUAVIARE', '2021-06-03', NULL, '2021-06-03 00:00:00', '2021-06-03 00:00:00', NULL);
INSERT INTO public.sivel2_gen_region (id, nombre, fechacreacion, fechadeshabilitacion, created_at, updated_at, observaciones) VALUES (26, 'SUR DE CÓRDOBA', '2021-06-03', NULL, '2021-06-03 00:00:00', '2021-06-03 00:00:00', NULL);



INSERT INTO public.cor1440_gen_proyectofinanciero (id, nombre, observaciones, fechainicio, fechacierre, responsable_id, fechacreacion, fechadeshabilitacion, created_at, updated_at, compromisos, monto, sectorapc_id, fechaformulacion, fechaaprobacion, fechaliquidacion, estado, dificultad, titulo, poromision) VALUES (103, 'SISTEMA DE GESTIÓN DE CALIDAD DE IAP ', '', '2020-01-01', NULL, NULL, NULL, NULL, '2021-01-15 15:59:34.119479', '2021-01-15 16:30:19.348302', NULL, 1.0, NULL, '2020-12-15', NULL, NULL, 'E', 'N', 'SISTEMA DE GESTIÓN DE CALIDAD DE IAP ', NULL);
INSERT INTO public.cor1440_gen_proyectofinanciero (id, nombre, observaciones, fechainicio, fechacierre, responsable_id, fechacreacion, fechadeshabilitacion, created_at, updated_at, compromisos, monto, sectorapc_id, fechaformulacion, fechaaprobacion, fechaliquidacion, estado, dificultad, titulo, poromision) VALUES (106, 'ACCIONES COMUNES DE IAP', '', '2021-01-01', NULL, NULL, NULL, NULL, '2021-06-22 14:51:03.619783', '2021-06-22 20:11:01.929358', NULL, 0.0, NULL, '2021-06-15', NULL, NULL, 'J', 'N', 'ACCIONES COMUNES DE IAP', 't');


INSERT INTO public.cor1440_gen_objetivopf (id, proyectofinanciero_id, numero, objetivo) VALUES (109, 106, 'MISIÓN.', 'Nuestra misión es realizar acompañamiento internacional en contexto de conflicto civil, social o armado, a organizaciones sociales en proceso de resistencia noviolenta con alto nivel de vulnerabilidad para la defensa de los Derechos Humanos. ');
INSERT INTO public.cor1440_gen_objetivopf (id, proyectofinanciero_id, numero, objetivo) VALUES (110, 106, 'VISIÓN.', 'Concienciamos a nuestra propia comunidad sobre la importancia de construir sociedades pacíficas justas, determinando de qué manera podemos contribuir a la consecución de los Objetivos de Desarrollo Sostenible (ODS) que marca la Agenda 2030 para la cooperación internacional.');
INSERT INTO public.cor1440_gen_objetivopf (id, proyectofinanciero_id, numero, objetivo) VALUES (111, 106, 'PRINCIPIOS', 'Nuestros principios son la noviolencia, solidaridad internacional, equidad de género, independencia, construcción y cultura de paz, laicidad y transparencia.');


INSERT INTO public.cor1440_gen_resultadopf (id, proyectofinanciero_id, objetivopf_id, numero, resultado) VALUES (108, 106, 109, 'I', 'Incidencia');
INSERT INTO public.cor1440_gen_resultadopf (id, proyectofinanciero_id, objetivopf_id, numero, resultado) VALUES (109, 106, 109, 'S', 'Sensibilización');
INSERT INTO public.cor1440_gen_resultadopf (id, proyectofinanciero_id, objetivopf_id, numero, resultado) VALUES (107, 106, 109, 'A', 'Acompañamiento');



INSERT INTO public.cor1440_gen_actividadpf (id, proyectofinanciero_id, nombrecorto, titulo, descripcion, resultadopf_id, actividadtipo_id, formulario_id, heredade_id) VALUES (110, 106, 'AR', 'Acompañamiento a reuniones de incidencia conjunta con la organización acompañada', '', 107, NULL, NULL, NULL);
INSERT INTO public.cor1440_gen_actividadpf (id, proyectofinanciero_id, nombrecorto, titulo, descripcion, resultadopf_id, actividadtipo_id, formulario_id, heredade_id) VALUES (111, 106, 'G', 'Gira política de incidencia presencial/virtual', '', 108, NULL, NULL, NULL);
INSERT INTO public.cor1440_gen_actividadpf (id, proyectofinanciero_id, nombrecorto, titulo, descripcion, resultadopf_id, actividadtipo_id, formulario_id, heredade_id) VALUES (112, 106, 'C', 'Carta de preocupación a instituciones competentes', '', 108, NULL, NULL, NULL);
INSERT INTO public.cor1440_gen_actividadpf (id, proyectofinanciero_id, nombrecorto, titulo, descripcion, resultadopf_id, actividadtipo_id, formulario_id, heredade_id) VALUES (113, 106, 'P', 'Interlocución e incidencia con plataformas internacionales', '', 108, NULL, NULL, NULL);
INSERT INTO public.cor1440_gen_actividadpf (id, proyectofinanciero_id, nombrecorto, titulo, descripcion, resultadopf_id, actividadtipo_id, formulario_id, heredade_id) VALUES (108, 106, 'AF', 'Acompañamiento físico de urgencia', '', 107, NULL, NULL, NULL);
INSERT INTO public.cor1440_gen_actividadpf (id, proyectofinanciero_id, nombrecorto, titulo, descripcion, resultadopf_id, actividadtipo_id, formulario_id, heredade_id) VALUES (109, 106, 'IP', 'Incidencia política de urgencia de manera telefónica ', '', 108, NULL, NULL, NULL);


UPDATE public.msip_tipoorg set nombre='ORGANIZACIÓN ACOMPAÑADA' 
  WHERE id = 1;
UPDATE public.msip_tipoorg set nombre='ORGANIZACIÓN (NO ACOMPAÑADA)' 
  WHERE id = 2;
UPDATE public.msip_tipoorg set nombre='INSTITUCIÓN CIVIL'
  WHERE id = 3;
INSERT INTO public.msip_tipoorg (id, nombre, 
  fechacreacion, created_at, updated_at) VALUES (
  4, 'FUERZA PÚBLICA',
  '2020-08-05', '2020-08-05', '2020-08-05');

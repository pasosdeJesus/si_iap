// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require sip/motor
//= require mr519_gen/motor
//= require heb412_gen/motor
//= require sivel2_gen/motor
//= require sivel2_gen/mapaosm
//= require cor1440_gen/motor
//= require_tree .


function siiap_actualiza_region_retrollamada(root, res) {
  document.getElementById('actividad_region').value = res.region_id
}

function siiap_actualiza_region() {
  dep = document.getElementById('actividad_ubicacionpre_departamento_id').value;
  mun = document.getElementById('actividad_ubicacionpre_municipio_id').value;
  params = {
    departamento_id: dep,
    municipio_id: mun
  }
  sip_funcion_tras_AJAX('regiones/de_depmun', params, 
    siiap_actualiza_region_retrollamada, 
    'No pudo obtener region del departamento y municipio.')
}

document.addEventListener('turbo:load', function() {
  var root;
  root = window;

  sip_prepara_eventos_comunes(root, false, false);
  sip_ubicacionpre_expandible_registra('actividad_', 'ubicacionpre', root,
    siiap_actualiza_region, siiap_actualiza_region);
  mr519_gen_prepara_eventos_comunes(root);
  heb412_gen_prepara_eventos_comunes(root);
  sivel2_gen_prepara_eventos_comunes(root);
  cor1440_gen_prepara_eventos_comunes(root);
  sivel2_gen_prepara_eventos_unicos(root);
  
  siiap_registra_orgsocial(root);



});

/* eslint no-console:0 */

console.log('Hola Mundo desde ESM')

import Rails from "@rails/ujs";
import "@hotwired/turbo-rails";
Rails.start();
window.Rails = Rails

import './jquery'
import '../../vendedor/recursos/javascripts/jquery-ui'

import 'gridstack'

import 'popper.js'              // Dialogos emergentes usados por bootstrap
import * as bootstrap from 'bootstrap'              // Maquetacion y elementos de diseño
import 'chosen-js/chosen.jquery';       // Cuadros de seleccion potenciados
import 'bootstrap-datepicker'
import 'bootstrap-datepicker/dist/locales/bootstrap-datepicker.es.min.js'

// Apexcharts
import ApexCharts from 'apexcharts'
window.ApexCharts = ApexCharts
import apexes from 'apexcharts/dist/locales/es.json'
Apex.chart = {
  locales: [apexes],
  defaultLocale: 'es',
}

// Leaflet
var L = require('leaflet');
var mc= require('leaflet.markercluster');


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
  msip_funcion_tras_AJAX('regiones/de_depmun', params, 
    siiap_actualiza_region_retrollamada, 
    'No pudo obtener region del departamento y municipio.')
}

import {AutocompletaAjaxExpreg} from '@pasosdejesus/autocompleta_ajax'
window.AutocompletaAjaxExpreg = AutocompletaAjaxExpreg

let esperarRecursosSprocketsYDocumento = function (resolver) {
  if (typeof window.puntomontaje == 'undefined') {
    setTimeout(esperarRecursosSprocketsYDocumento, 100, resolver)
    return false
  }
  if (document.readyState !== 'complete') {
    setTimeout(esperarRecursosSprocketsYDocumento, 100, resolver)
    return false
  }
  resolver("Recursos manejados con sprockets cargados y documento presentado en navegador")
    return true
  }

let promesaRecursosSprocketsYDocumento = new Promise((resolver, rechazar) => {
  esperarRecursosSprocketsYDocumento(resolver)
})

promesaRecursosSprocketsYDocumento.then((mensaje) => {
  console.log(mensaje)
  var root = window;

  msip_prepara_eventos_comunes(root, false, false);
  msip_ubicacionpre_expandible_registra('actividad_', 'ubicacionpre', root,
    siiap_actualiza_region, siiap_actualiza_region);
  mr519_gen_prepara_eventos_comunes(root);
  heb412_gen_prepara_eventos_comunes(root);
  sivel2_gen_prepara_eventos_comunes(root);
  cor1440_gen_prepara_eventos_comunes(root);
  sivel2_gen_prepara_eventos_unicos(root);

  siiap_registra_orgsocial(root);

})


document.addEventListener('turbo:load', (e) => {
 /* Lo que debe ejecutarse cada vez que turbo cargue una página,
 * tener cuidado porque puede dispararse el evento turbo varias
 * veces consecutivas al cargar una página.
 */
  
  console.log('Escuchador turbo:load')

  msip_ejecutarAlCargarPagina(window)
})

import "./controllers"

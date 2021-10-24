
function siiap_actualiza_region_orgsocial(root, res) {
  document.getElementById('orgsocial_region').value = res.region_id
}

function siiap_registra_orgsocial(root) {

  const orgsocialmun = document.getElementById('orgsocial_municipiotrab_ids');

  if (orgsocialmun != null) {
    $(orgsocialmun).on('change', (evento, params) => {
      mun = document.getElementById('orgsocial_municipiotrab_ids').value;
      params = {
        departamento_id: null,
        municipio_id: mun
      }
      sip_funcion_tras_AJAX('regiones/de_depmun', params, 
        siiap_actualiza_region_orgsocial, 
        'No pudo obtener region del municipio.')
    });
  }

}

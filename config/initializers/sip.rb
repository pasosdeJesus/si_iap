require 'sivel2_gen/version'

Sip.setup do |config|
  config.ruta_anexos = (ENV['SIP_RUTA_ANEXOS'] || 
                        "#{Rails.root}/archivos/anexos/")
  config.ruta_volcados = (ENV['SIP_RUTA_VOLCADOS'] || 
                          "#{Rails.root}/archivos/bd/")
  # En heroku los anexos son super-temporales
  if ENV["HEROKU_POSTGRESQL_MAUVE_URL"]
    config.ruta_anexos = "#{Rails.root}/tmp/"
  end
  config.titulo = "MIVIAP #{Sivel2Gen::VERSION}"

  config.colorom_fondo = '#ffffff'
  config.colorom_color_fuente = '#000000'
  config.colorom_nav_ini = '#f07d08'
  config.colorom_nav_fin = '#f07d08'
  config.colorom_nav_fuente = '#ffffff'
  config.colorom_fondo_lista = '#f07d08'
  config.colorom_color_flota_subitem_fuente = '#266dd3'
  config.colorom_color_flota_subitem_fondo = '#ffffff'
  config.colorom_btn_primario_fondo_ini = '#2399d7'
  config.colorom_btn_primario_fondo_fin = '#2399d7'
  config.colorom_btn_primario_fuente = '#ffffff'
  config.colorom_btn_peligro_fondo_ini = '#bf1b28'
  config.colorom_btn_peligro_fondo_fin = '#bf1b28'
  config.colorom_btn_peligro_fuente = '#ffffff'
  config.colorom_btn_accion_fondo_ini = '#f2f2ff'
  config.colorom_btn_accion_fondo_fin= '#d6d6f0'
  config.colorom_btn_accion_fuente = '#000000'
  config.colorom_alerta_exito_fondo = '#ff9d28'
  config.colorom_alerta_exito_fuente = '#000000'
  config.colorom_alerta_problema_fondo = '#bf1b28'
  config.colorom_alerta_problema_fuente = '#ffffff'

end

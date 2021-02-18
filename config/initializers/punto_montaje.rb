Cor1440::Application.config.relative_url_root = 
  ENV['RUTA_RELATIVA'] || '/iap/si'
Cor1440::Application.config.assets.prefix = 
  (ENV['RUTA_RELATIVA'] || '/iap/si') + '/assets'

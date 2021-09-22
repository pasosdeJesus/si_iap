ActiveSupport::Inflector.inflections do |inflect|
  inflect.irregular 'accionorg', 'accionesorg'
  inflect.irregular 'contexto', 'contextos'
  inflect.irregular 'estadoobs', 'estadosobs'
  inflect.irregular 'gradoimpacto', 'gradosimpacto'
  inflect.irregular 'nivelorganzorc', 'nivelesorganzorc'
  inflect.irregular 'nodo', 'nodos'
  inflect.irregular 'tipoorganzorc', 'tiposorganzorc'
  inflect.irregular 'zrc', 'zrcs'
  inflect.irregular 'zx', 'zsx'

  # La siguiente no se puso en orden porque la rregla de zrc estaba 
  # teniendo precedencia
  inflect.irregular 'estadozrc', 'estadoszrc'
end

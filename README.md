# si_iap


[![Revisado por Hound](https://img.shields.io/badge/Reviewed_by-Hound-8E64B0.svg)](https://houndci.com) [![Estado Construcción](https://gitlab.com/pasosdeJesus/si_iap/badges/main/pipeline.svg)](https://gitlab.com/pasosdeJesus/si_iap/-/pipelines)[![Clima del Código](https://codeclimate.com/github/pasosdeJesus/si_iap/badges/gpa.svg)](https://codeclimate.com/github/pasosdeJesus/si_iap) [![Cobertura de Pruebas](https://codeclimate.com/github/pasosdeJesus/si_iap/badges/coverage.svg)](https://codeclimate.com/github/pasosdeJesus/si_iap) [![security](https://hakiri.io/github/pasosdeJesus/si_iap/master.svg)](https://hakiri.io/github/pasosdeJesus/si_iap/master)


Sistema de Información de IAP


### Requerimientos
* Ruby version >= 3.0
* PostgreSQL >= 13 con extensión unaccent disponible
* node.js >= 12
* Recomendado sobre adJ 6.8 (que incluye todos los componentes mencionados).  
  Las siguientes instrucciones suponen que opera en este ambiente.

Puede consultar como instalar estos componentes en: 
<https://github.com/pasosdeJesus/sip/wiki/Requisitos>


### Arquitectura

Es una aplicación que emplea los siguientes motores:
*  genérico para sistemas de información ```sip``` <https://github.com/pasosdeJesus/sip>
*  formularios ```mr519_gen``` <https://github.com/pasosdeJesus/mr519_gen>
*  nube y llenado de plantillas ```heb412_gen``` <https://github.com/pasosdeJesus/heb412_gen>
*  genérico para manejo de casos ```sivel2_gen``` <https://github.com/pasosdeJesus/sivel2_gen>
*  genérico para proyectos con marco lógico y actividades ```cor1440_gen``` <https://github.com/pasosdeJesus/cor1440_gen>


### Configuración y uso de servidor de desarrollo

Su configuración y uso es similar al de SIVeL2 se invita a ver
las instrucciones dle mismo en
<https://github.com/pasosdeJesus/sivel2/>


#!/bin/sh
# Inicia produccion

if (test "${DIRAP}" = "") then {
  echo "Falta directorio de aplicacion en DIRAP";
  exit 1;
} fi;
if (test -f "${DIRAP}/.env") then {
  . ${DIRAP}/.env
} fi;
if (test "${SECRET_KEY_BASE}" = "") then {
  echo "Definir variable de ambiente SECRET_KEY_BASE"
  exit 1;
} fi;
if (test "${USUARIO_AP}" = "") then {
  echo "Definir usuario con el que se ejecuta en USUARIO_AP"
  exit 1;
} fi;
if (test "${CONFIG_HOSTS}" = "") then {
  echo "Definir nombre de servido donde corre en CONFIG_HOSTS"
  exit 1;
} fi;

doas=`which doas 2> /dev/null`
if (test "$?" != "0") then {
  doas="sudo"
} fi;
$doas su ${USUARIO_AP} -c "cd /var/www/htdocs/si_iap; RAILS_ENV=production bin/rails assets:precompile --trace; echo \"Iniciando unicorn...\"; CONFIG_HOSTS=${CONFIG_HOSTS} SECRET_KEY_BASE=${SECRET_KEY_BASE} bundle exec unicorn_rails -c ../si_iap/config/unicorn.conf.minimal.rb  -E production -D"


  


# encoding: UTF-8

require 'sivel2_gen/concerns/models/anexo'
require 'cor1440_gen/concerns/models/anexo'

module Sip
  class Anexo < ActiveRecord::Base
    include Sivel2Gen::Concerns::Models::Anexo
    include Cor1440Gen::Concerns::Models::Anexo

      self.table_name = 'sip_anexo'
      has_attached_file :adjunto, 
        :path => Rails.application.config.x.heb412_ruta.join('ANEXOS').to_s + "/:carpeta" + "/:id_:filename"
      Paperclip.interpolates('carpeta') do |attachment, style| 
        attachment.instance.carpeta.parameterize 
      end 
  end
end

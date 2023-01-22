require 'sivel2_gen/concerns/models/usuario'

class Usuario < ActiveRecord::Base

  include Sivel2Gen::Concerns::Models::Usuario

  belongs_to :tdocumento,
    class_name: 'Msip::Tdocumento', foreign_key: "tdocumento_id", optional: true

end


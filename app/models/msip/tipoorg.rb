require 'msip/concerns/models/tipoorg'

module Msip
  class Tipoorg < ActiveRecord::Base
    include Msip::Concerns::Models::Tipoorg

    ORGFP = 4
  end
end

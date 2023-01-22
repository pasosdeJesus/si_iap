class Zrc < ActiveRecord::Base
  include Msip::Basica
  belongs_to :estadozrc, optional: true
end

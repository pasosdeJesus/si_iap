ENV['RAILS_ENV'] ||= 'test'

require 'simplecov'
SimpleCov.start 'rails'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase

  fixtures :all

  protected

  def load_seeds
    load "#{Rails.root}/db/seeds.rb"
  end

  # convieret /iap/miviap/iap/miviap/ en /iap/miviap/
  def filtra_doble_ruta_relativa(r)
    p = Pathname(Rails.configuration.relative_url_root) + 
      Rails.configuration.relative_url_root.sub(/^\//, '')
    res = r.gsub(p.to_s, Rails.configuration.relative_url_root) 
    puts "res=#{res}"
    return res
  end

end

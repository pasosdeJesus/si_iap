class ApplicationController < Sip::ApplicationController
  protect_from_forgery with: :exception

  # sin autorización porque es utilidad
end


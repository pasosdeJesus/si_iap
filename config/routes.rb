Rails.application.routes.draw do

  rutarel = (ENV['RUTA_RELATIVA'] || 'iap/miviap/')
  scope rutarel do
    devise_scope :usuario do
      get 'sign_out' => 'devise/sessions#destroy'
      get 'salir' => 'devise/sessions#destroy',
        as: :terminar_sesion

      post 'usuarios/iniciar_sesion', to: 'devise/sessions#create'
      get 'usuarios/iniciar_sesion', to: 'devise/sessions#new',
        as: :iniciar_sesion

      # El siguiente para superar mala generación del action en el formulario
      # cuando se autentica mal (genera
      # /puntomontaje/puntomontaje/usuarios/sign_in )
      if (Rails.configuration.relative_url_root != '/')
        ruta = File.join(Rails.configuration.relative_url_root,
                         'usuarios/sign_in')
        post ruta, to: 'devise/sessions#create'
      end
    end
    devise_for :usuarios, :skip => [:registrations], module: :devise
    as :usuario do
      get 'usuarios/edit' => 'devise/registrations#edit',
        :as => 'editar_registro_usuario'
      put 'usuarios/:id' => 'devise/registrations#update',
        :as => 'registro_usuario'
    end

    resources :accionesorg, path_names: {new: 'nueva', edit: 'edita' }

    resources :coyonturasregionales, path_names: {new: 'nuevo', edit: 'edita' }

    resources :observaciones, path_names: { new: 'nueva', edit: 'edita' }

    resources :usuarios, path_names: { new: 'nuevo', edit: 'edita' }

    resources :zrcs, path_names: {new: 'nueva', edit: 'edita' }

    get 'proyectosfinancieros/:id/matriz_seguimiento' =>
      'cor1440_gen/proyectosfinancieros#matriz_seguimiento',
        as: 'matrizseguimiento'

    get 'regiones/de_depmun' => 'sivel2_gen/admin/regiones#de_depmun',
      as: 'region_de_depmun'

    namespace :admin do
      ab = ::Ability.new
      ab.tablasbasicas.each do |t|
        if (t[0] == "")
          c = t[1].pluralize
          resources c.to_sym,
            path_names: { new: 'nueva', edit: 'edita' }
        end
      end
    end

    root 'sivel2_gen/hogar#index'
  end

  mount Msip::Engine, at: rutarel, as: 'msip'
  mount Mr519Gen::Engine, at: rutarel, as: 'mr519_gen'
  mount Heb412Gen::Engine, at: rutarel, as: 'heb412_gen'
  mount Cor1440Gen::Engine, at: rutarel, as: 'cor1440_gen'
  mount Sivel2Gen::Engine, at: rutarel, as: 'sivel2_gen'
end

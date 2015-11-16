class TfAdminAssetsGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../templates', __FILE__)
  desc 'Copy design example pages and mount engine'

  def install
    directory 'layouts', 'app/views/layouts'
    directory 'pages', 'app/views/pages'
    route "get 'dashboard', to: 'pages#index'"
  end
end

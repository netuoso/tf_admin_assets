class TfAdminAssetsGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../templates', __FILE__)
  desc 'Copy design example pages and mount engine'

  def install
    directory 'controllers', 'app/controllers'
    directory 'layouts', 'app/views/layouts'
    directory 'pages', 'app/views/pages'
    route 'root "pages#dashboard"\n\t\t%w(dashboard blank buttons flot forms grid icons login morris notifications panels_wells tables typography).each do |page|\n\t\tget "\#{page}", to: "pages\#\#{page}"\n\tend'
  end
end

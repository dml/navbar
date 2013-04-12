module Navbar
  class Railtie < Rails::Railtie
    config.eager_load_namespaces << Navbar
  end
end

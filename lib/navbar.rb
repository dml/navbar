require "navbar/engine"

ActiveSupport.on_load(:action_controller) do
  extend Navbar::Engine::ClassMethods
  extend Navbar::Engine::HelperMethods
end

require "navbar/builder"

ActiveSupport.on_load(:action_controller) do
  extend Navbar::Builder
end

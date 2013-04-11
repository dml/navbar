require "navbar/version"

module Navbar
  autoload :Builder, 'navbar/builder'
end

 ActiveSupport.on_load(:action_controller) do
   extend Navbar::Builder
 end

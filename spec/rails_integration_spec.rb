require "rspec/rails"
require "support/app"
require "support/welcome_controller"

class TargetsController < ActionController::Base
  nav_tab :external, permanent: true
  nav_tab :home
  nav_tab :edit, only: %(new edit)
  nav_tab :preview, only: :preview
end

describe TargetsController do

end

__END__

= navbar do
  = tab.external, "Non target action", root_path
  = tab.home, "Target index", targets_path
  = tab.edit, "Content"
  = tab.preview, "Preview"


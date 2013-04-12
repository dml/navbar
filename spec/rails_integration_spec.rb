require 'rspec/rails'
require 'support/app'
require 'support/welcome_controller'

require 'navbar'

describe TargetsController do

  context "tabs configuration" do

  end

  context "tabs rendering" do

  end

end

__END__

= navbar do
  = tab.external, "Non target action", root_path
  = tab.home, "Target index", targets_path
  = tab.edit, "Content"
  = tab.preview, "Preview"


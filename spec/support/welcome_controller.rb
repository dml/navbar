class WelcomeController < ActionController::Base
  def index
    render inline: DATA.read
  end
end

__END__

Wellcome


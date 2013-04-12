require "navbar/builder"
require "action_controller"

class TargetsController < ActionController::Base
end

describe Navbar::Builder do
  describe ".navbar" do
    let(:controller) { TargetsController.new }
  end
end


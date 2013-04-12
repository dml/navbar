require "navbar/builder"
require "action_controller"

class TargetsController < ActionController::Base
  extend Navbar::Builder
end

describe Navbar::Builder do

  describe ".navbar" do

    let(:controller) { TargetsController.new }

    subject { controller }

    it { should respond_to(:navbar) }
    it { respond_to(:nav_tab) }

    context "defatult scope" do

      context "assign current tab as active" do
        before { subject.nav_tab(:test, active: true) }
      end

      context "highligt tab with a css class" do
        before { subject.nav_tab(:test, class: "permanent") }
      end

    end

  end

end

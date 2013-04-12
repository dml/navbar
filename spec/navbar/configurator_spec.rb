require 'navbar/configurator'

describe Navbar::Configurator do

  let(:configurator) { described_class.new }

  subject { configurator }

  it { should respond_to(:tabs) }
  it { should respond_to(:size) }

  context ".register" do

    context "scope" do
      context "default scope" do
        before { subject.register(:test) }
        its(:size) { should == 1 }
      end

      context "named scope as symbol" do
        before { subject.register(:test, scope: :wizard) }
        specify { subject.size(:wizard).should == 1 }
        specify { subject.size('wizard').should == 1 }
      end

      context "named scope as string" do
        before { subject.register(:test, scope: 'wizard') }
        specify { subject.size(:wizard).should == 1 }
        specify { subject.size('wizard').should == 1 }
      end

      context "scopes mix" do
        before do
          subject.register(:test)
          subject.register(:test, scope: 'wizard')
        end
        its(:size) { should == 1 }
        specify { subject.size(:wizard).should == 1 }
      end
    end

    context "html class" do
      context "defatult scope" do
        before { configurator.register(:test, class: 'highlighted') }
        subject { configurator.tab(:test) }
        its(:html_class) { should == 'highlighted' }
      end

      context "named scope" do
        before { configurator.register(:test, scope: "wizard", class: 'highlighted') }
        subject { configurator.tab(:test, :wizard) }
        its(:html_class) { should == 'highlighted' }
      end
    end

    context "active" do
      context "by default" do
        before { configurator.register(:test) }
        subject { configurator.tab(:test) }
        specify { subject.should_not be_active }
      end

      context "acvite true" do
        before { configurator.register(:test, active: true) }
        subject { configurator.tab(:test) }
        specify { subject.should be_active }
        specify { subject.html_class.should == "active" }
      end

      context "acvite is a html class name" do
        before { configurator.register(:test, active: "current") }
        subject { configurator.tab(:test) }
        specify { subject.should be_active }
        specify { subject.html_class.should == "current" }
      end
    end

    context "css classes mix" do
      before { configurator.register(:test, active: "current", class: "colorful") }
      subject { configurator.tab(:test) }
      specify { subject.html_class.should =~ /current/ }
      specify { subject.html_class.should =~ /colorful/ }
    end

  end

end

require 'navbar/configurator'
require 'navbar/renderer'

module Navbar
  module Builder
    def self.extended(base)
      base.class_eval do
        class_attribute :navbar
        self.navbar ||= Configurator.new do |c|
          c.scope = :default
          c.class = nil
          c.tabs = []
        end
      end
    end

    def nav_tab(name, options = {})
      navbar.register(name, options)
    end
  end
end

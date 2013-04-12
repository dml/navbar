require 'active_support/all'
require 'action_controller'
require 'action_dispatch'

require 'navbar'

module Rails
  class App
    def env_config; {} end
    def routes
      return @routes if defined?(@routes)
      @routes = ActionDispatch::Routing::RouteSet.new
      @routes.draw do
        root to: 'welcome#index'
      end
      @routes
    end
  end
  def self.application
    @app ||= App.new
  end
end

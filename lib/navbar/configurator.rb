require 'ostruct'

module Navbar
  class Configurator

    DEFAULT_SCOPE = :default

    attr_reader :tabs

    def initialize(*args, &block)
      @configuration = OpenStruct.new
      @tabs = OpenStruct.new(DEFAULT_SCOPE => [])

      yield(@configuration) if block_given?
    end

    def register(name, options = {})
      scope = options.fetch(:scope, DEFAULT_SCOPE)
      active = options.fetch(:active, nil)
      css = [options.fetch(:class, nil)]
      css << (active.is_a?(String) ? active : "active") if active
      bar(scope) << OpenStruct.new({
        name: name,
        html_class: css.compact.flatten.join(" "),
        "active?" => active
      })
    end

    def tab(name, scope = DEFAULT_SCOPE)
      tabs.send(scope) && tabs.send(scope).find{ |item| item.name == name }
    end

    def size(scope = DEFAULT_SCOPE)
      bar(scope).is_a?(Array) and bar(scope).size
    end

    private

    def bar(scope)
      tabs.send(scope) or tabs.send("#{scope}=", [])
    end

  end
end

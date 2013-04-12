module Navbar
  class Renderer
    attr_accessor :wrapper, :element

    def initialize
      wrapper = :ul
      element = :li
    end

    def render(collection)
    end
  end
end

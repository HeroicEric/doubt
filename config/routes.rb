Doubt::Application.routes.draw do
  class FormatTest
    attr_accessor :mime_type

    def initialize(format)
      @mime_type = Mime::Type.lookup_by_extension(format)
    end

    def matches?(request)
      request.format == mime_type
    end
  end

  root 'dashboard#index',
    constraints: FormatTest.new(:html)

  resources :lessons, only: [:index, :show],
    constraints: FormatTest.new(:json)

  resources :sections, only: [:index, :show],
    constraints: FormatTest.new(:json)

  get '*foo', to: 'dashboard#index',
    constraints: lambda { |request|
      path = request.env["REQUEST_PATH"]
      path != "/qunit" && FormatTest.new(:html).matches?(request)
    }
end

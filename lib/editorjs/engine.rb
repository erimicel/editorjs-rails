# frozen_string_literal: true

module Editorjs
  class Engine < ::Rails::Engine
    initializer "editorjs.assets" do
      if Rails.application.config.respond_to?(:assets)
        Rails.application.config.assets.precompile += %w( editor.js )
      end
    end
  end
end

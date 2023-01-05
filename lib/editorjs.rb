# frozen_string_literal: true

require "editorjs/version"
require "editorjs/engine"

module Editorjs
  def stylesheets_path
    File.join assets_path, "stylesheets"
  end

  def javascripts_path
    File.join assets_path, "javascripts"
  end

  def assets_path
    @assets_path ||= File.join gem_path, "assets"
  end

  def gem_path
    @gem_path ||= File.expand_path "..", File.dirname(__FILE__)
  end
end

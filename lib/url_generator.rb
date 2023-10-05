# frozen_string_literal: true

require_relative "url_generator/version"

class UrlGenerator
  def initialize(base_url)
    @elements = Array.new(base_url)
  end

  def append(element)
    @elements.append(element)
  end

  def query(key, value)
    @elements.include?('?') ? @elements.append("&#{key}=#{value}") : @elements.append("?#{key}=#{value}")
  end

  def build
    @elements.join
  end
end
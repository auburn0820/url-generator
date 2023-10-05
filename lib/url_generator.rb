# frozen_string_literal: true

require_relative "url_generator/version"

module UrlGenerator
  class UrlGenerator
    def initialize(base_url)
      @elements = [base_url]
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
end

# -*- encoding: utf-8 -*-
# stub: google_search_results 2.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "google_search_results".freeze
  s.version = "2.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "yard.run" => "yri" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["hartator".freeze, "jvmvik".freeze]
  s.date = "2021-12-15"
  s.description = "Scape localized search results from search engine using SerpApi.com and returns Hash, JSON, raw HTML".freeze
  s.email = "hartator@gmail.com".freeze
  s.homepage = "https://github.com/serpapi/google-search-results-ruby".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.2".freeze)
  s.rubygems_version = "3.3.5".freeze
  s.summary = "Get Google, Bing, Baidu, Ebay, Yahoo, Yandex, Home depot, Naver, Apple, Duckduckgo, Youtube search results via SerpApi.com".freeze

  s.installed_by_version = "3.3.5" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<rake>.freeze, ["~> 13.0.1"])
    s.add_development_dependency(%q<rspec>.freeze, ["~> 3.9"])
    s.add_development_dependency(%q<yard>.freeze, ["~> 0.9.24"])
    s.add_development_dependency(%q<rubocop>.freeze, ["~> 0.49.1"])
  else
    s.add_dependency(%q<rake>.freeze, ["~> 13.0.1"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.9"])
    s.add_dependency(%q<yard>.freeze, ["~> 0.9.24"])
    s.add_dependency(%q<rubocop>.freeze, ["~> 0.49.1"])
  end
end

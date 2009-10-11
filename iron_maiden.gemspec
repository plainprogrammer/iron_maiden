Gem::Specification.new do |s|
  s.name = %q{iron_maiden}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["James Thompson"]
  s.date = %q{2009-10-10}
  s.description = %q{Iron Maiden is a tool for easing deployment of IronRuby applications providing both a gem command and a convential command line interface.}
  s.email = %q{james@plainprograms.com}
  s.extra_rdoc_files = ["README", "LICENSE"]
  s.files = ["README", "lib/iron_maiden.rb", "lib/rubygems_plugin.rb", "LICENSE"]
  s.has_rdoc = true
  s.homepage = %q{http://www.plainprograms.com/}
  s.rdoc_options = ["--inline-source", "--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.0}
  s.summary = %q{Iron Maiden is a tool for easing deployment of IronRuby applications.}

  # if s.respond_to? :specification_version then
  #   current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
  #   s.specification_version = 2
  # 
  #   if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
  #     s.add_runtime_dependency(%q<gem_name>, [">= 1.0"])
  #   else
  #     s.add_runtime_dependency(%q<gem_name>, [">= 1.0"])
  #   end
  # else
  #   s.add_runtime_dependency(%q<gem_name>, [">= 1.0"])
  # end
end
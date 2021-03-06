# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{number_postfixr}
  s.version = "1.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Luke van der Hoeven"]
  s.date = %q{2010-01-26}
  s.description = %q{I found the need to be able to have counting sequences from simple fixnums, and I didn't know what to search for to see if such functionality existed, so I just created it... Hope this helps somebody beyond just me.}
  s.email = %q{hungerandthirst@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "lib/number_postfixr.rb",
     "number_postfixr.gemspec",
     "test.rb",
     "test/helper.rb",
     "test/test_number_postfixr.rb"
  ]
  s.homepage = %q{http://github.com/plukevdh/number_postfixr}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Simple library to turn fixnums into strings with sequence postfixes attached (i.e. 1st, 2nd -or- first, second}
  s.test_files = [
    "test/helper.rb",
     "test/test_number_postfixr.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<shoulda>, [">= 2.10"])
    else
      s.add_dependency(%q<shoulda>, [">= 2.10"])
    end
  else
    s.add_dependency(%q<shoulda>, [">= 2.10"])
  end
end


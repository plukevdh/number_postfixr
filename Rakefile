require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "number_postfixr"
    gem.summary = %Q{Simple library to turn fixnums into strings with sequence postfixes attached (i.e. 1st, 2nd -or- first, second}
    gem.description = %Q{I found the need to be able to have counting sequences from simple fixnums, and I didn't know what to search for to see if such functionality existed, so I just created it... Hope this helps somebody beyond just me.}
    gem.email = "hungerandthirst@gmail.com"
    gem.homepage = "http://github.com/plukevdh/number_postfixr"
    gem.authors = ["Luke van der Hoeven"]
    gem.add_dependency("shoulda", ">= 2.10")
    # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
end

begin
  require 'rcov/rcovtask'
  Rcov::RcovTask.new do |test|
    test.libs << 'test'
    test.pattern = 'test/**/test_*.rb'
    test.verbose = true
  end
rescue LoadError
  task :rcov do
    abort "RCov is not available. In order to run rcov, you must: sudo gem install spicycode-rcov"
  end
end

task :test => :check_dependencies

task :default => :test

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "number_postfixr #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

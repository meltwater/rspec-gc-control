require 'bundler'
Bundler.setup

require 'rake'
require 'yaml'

require 'cucumber/rake/task'
Cucumber::Rake::Task.new(:cucumber)

desc 'delete generated files'
task :clobber do
  sh %q{find . -name "*.rbc" | xargs rm}
  sh 'rm -rf pkg'
  sh 'rm -rf tmp'
#   sh 'rm -rf coverage'
  sh 'rm -rf .yardoc'
  sh 'rm -rf doc'
end

require 'yard'
YARD::Rake::YardocTask.new do |t|
  # t.files   = ['features/**/*.feature', 'features/**/*.rb', 'lib/**/*.rb']
  # t.options = ['--any', '--extra', '--opts'] # optional
end

task :default => [:spec, :cucumber]

require "rubygems"

require "rspec/core/rake_task"

desc "Run those specs"
task :spec do
  RSpec::Core::RakeTask.new(:spec) do |t|
    ENV['RACK_ENV'] = 'test'
    t.rspec_opts = %w{
      --colour
      --format progress
      --debugger
    }
    t.pattern = 'spec/**/*_spec.rb'
  end
end

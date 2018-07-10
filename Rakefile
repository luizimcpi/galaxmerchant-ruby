require "bundler/gem_helper"
Bundler::GemHelper.install_tasks :name => "minitest"
require "rake/testtask"

Rake::TestTask.new do |t|
  t.test_files = FileList['tests/**/*_test.rb']
end
desc "Run tests"

task default: :test

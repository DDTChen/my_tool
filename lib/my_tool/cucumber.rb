require 'rubygems'
require 'cucumber'
require 'cucumber/rake/task'

module Test
  class BDD
    def cucumberTask
        Cucumber::Rake::Task.new(:features) do |t|
          t.cucumber_opts = "features --format pretty"
        end
    end
  end
end

module Fcrepo::Datastreams
  Dir.glob(File.join(File.dirname(__FILE__), 'datastreams', '*')).each { |x| require x }
end

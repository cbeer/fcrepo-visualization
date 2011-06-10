module Fcrepo::DigitalObjects
  Dir.glob(File.join(File.dirname(__FILE__), 'digital_objects', '*')).each { |x| require x }
end

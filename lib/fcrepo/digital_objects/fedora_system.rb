module Fcrepo::DigitalObjects::FedoraSystem
  Dir.glob(File.join(File.dirname(__FILE__), 'fedora_system', '*')).each { |x| require x }
end

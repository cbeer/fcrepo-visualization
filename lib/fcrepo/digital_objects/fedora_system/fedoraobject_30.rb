module Fcrepo::DigitalObjects::FedoraSystem::Fedoraobject30
  def visualization
    datastreams.map { |dsid, ds| ds.visualization if ds.respond_to? :visualization }.compact.join("\n")
  end
end

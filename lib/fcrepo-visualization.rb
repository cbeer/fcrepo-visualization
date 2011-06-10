require 'rubydora'
require 'fcrepo'

module Fcrepo
  module Visualization
    def self.init! config
      Rubydora.repository = Rubydora.connect({:url => config[:url], :user => config[:user], :password => config[:pass]})
      Rubydora.repository.extend Rubydora::Soap
      require 'rubydora/ext/solr'
      Rubydora::Ext::Solr.load

      require 'rubydora/ext/model_loader'
      Rubydora::Ext::ModelLoader.load :base_namespace => Fcrepo::DigitalObjects

      Rubydora::Ext::ModelLoader.load :class => Rubydora::Datastream, :method => :dsid, :base_namespace => Fcrepo::Datastreams
    end
  end
end

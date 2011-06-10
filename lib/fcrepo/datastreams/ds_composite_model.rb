module Fcrepo::Datastreams::DsCompositeModel
  def visualization
"DS-COMPOSITE-MODEL".green.underline + "\n" +
   type_model.map { |id, h| "#{id.cyan} / #{ h[:mime].blue } h[:title] " }.join("\n") 
  end

  def type_model
    xml = Nokogiri::XML(content)
    xmlns = { 'dscm' => 'info:fedora/fedora-system:def/dsCompositeModel#', 'dc' => 'http://purl.org/dc/terms/' }

    h = {}

    xml.xpath('//dscm:dsTypeModel', xmlns).each do |ds|
      h[ds.xpath('@ID').to_s] = { :mime => ds.xpath('dscm:form/@MIME', xmlns).to_s, :title => ds.xpath('dc:title/text()', xmlns).to_s }
    end

    h
  end
end

# Usage

Pretty-print metadata about a Fedora object

Usage:

    fcrepo-visualization [options] PID
      --user, -u <s>:   Fedora User (default: fedoraAdmin)
      --pass, -p <s>:   Fedora Password (default: fedora)
      --url, -r <s>:   Fedora Url (default: http://localhost:8983/fedora)
      --version, -v:   Print version and exit
      --help, -h:   Show this message


    $ fcrepo-visualization "org.wgbh.mla:e67ef62e29a364dbb7faeb55837714f9163fe9ec"
    
     org.wgbh.mla:e67ef62e29a364dbb7faeb55837714f9163fe9ec (A)
    
     info:fedora/wgbh:CONCEPT
     info:fedora/fedora-system:FedoraObject-3.0
    
     Datastreams:
     DC / text/xml (X) DC Metadata
     DublinCore / text/plain (E) 
     PBCore / text/xml (X) DC Metadata
     RELS-EXT / application/rdf+xml (X) Relationships
     Thumbnail / image/jpg (M) 
     Transcript.tei.xml / text/xml (R) 
     Video.mp4 / video/mp4 (R) 
    
     Relations:
     info:fedora/fedora-system:def/relations-external#isMemberOfCollection
     wgbh:openvault
     org.wgbh.mla:vath-000107
     org.wgbh.mla:vath

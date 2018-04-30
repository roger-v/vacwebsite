class DonateController < ApplicationController
  def index
    
  end
  def donors
  
  end
  def recognition
    
  end
  def corporate_recognition
    @level3logos = ["CarringtonCF_Logo.jpg", "BillEdwardsGroup_Logo.jpeg", "VehiclesForVeterans_Logo.png", "windowworld.jpg"]
    @level3links = ["http://www.carringtoncf.org/", "http://billedwardspresents.com/", "https://www.vehiclesforveterans.org/", "http://www.windowworld.com/"]
    @level2logos = ["remind.png", "MasterBrands.png", "Cook-Logo.jpg", "DAV-Logo.jpg", "duotech.jpg", "eclipse.png", "FYDA.jpg", "GWAO.jpg", "IHFA.jpg", "vvti.png", "signature.jpg", "thomson.gif", "USAA-Foundation_Logo.jpg", "USBank.jpg"]
    @level2links = ["http://remind.org/", "http://www.cessna.com/", "http://www.cookstuff.com/", "http://www.dav.org/", "http://www.duotechservices.com/", "http://eclipseaerospace.net/", "http://www.fydafreightliner.com/", "http://www.gwao.org/", "", "http://www.mophsf.org/", "http://www.signatureflight.com/", "http://thomsonreuters.com/", "http://www.usaa.com/", "http://www.usbank.com/"]
    @level1logos = ["AOPA-w_wings.gif", "AtlanticAviation_logo.png", "CastleAviation_logo.jpeg", "CHI_logo.png", "ChoctawNation_logo.png", "CJP_logo.jpg", "closeline.jpeg", "shellaviation.jpeg", "flyingmag_logo.png", "GAMA_ID.jpg", "domain-b_gulfstream_logo.gif", "InterstateTreating_logo.jpeg", "jeppesen_logo.gif", "logo-l3.gif", "MarescoInternational_logo.jpg", "nbaa.gif", "noc_logo_blue.gif", "omni.png", "OrthopaedicInstitute_logo.jpeg", "raptor.jpg", "SouthernAirHeritage_logo.gif", "cat.jpg", "tensor.jpg", "TetonAviationCenter_logo.jpg", "ves.jpg", "VikingElectric.gif", "WarriorBonfire_logo.jpg", "wilson.jpeg"]
    @level1links = ["http://www.aopa.org/", "http://www.atlanticaviation.com/", "http://www.castleair.com//", "http://chiaviation.com/", "http://www.choctawnation.com/", "http://www.citationjetpilots.com/", "http://www.closeline.com/", "http://www.shell.com/home/content/aviation/", "http://www.flyingmag.com/", "http://www.gama.aero/", "http://www.gulfstream.com/", "http://www.intertreat.com/", "http://www.jeppesen.com/", "http://www.as.l-3com.com/", "", "http://www.nbaa.org/", "http://www.northropgrumman.com/", "https://www.omnimilitaryloans.com/", "http://www.orthopaedicinstitute.com/", "http://www.raptoraviation.com/", "http://www.southernheritageair.org/", "http://www.stowerscat.com/", "http://www.tensorengr.com/", "http://tetonaviation.com/", "http://www.vesservices.com/", "https://www.vikingelectric.com/", "http://www.warriorbonfireprogram.org/", "http://wilsonair.com/"]
  end
  def memorial_wall
    
  end
end

#Kyle Edit Test
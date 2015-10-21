package web.locater

import org.grails.plugin.geoip.*
import com.maxmind.geoip.*

class LocationController {

	LookupService lookupService
	GeoIpService ipService
	String fileLocation

	def index() { 
		// need to initialise ipService with lookupService
		ipService = new GeoIpService(geoLookupService : getLookupService())
		def ipAddr = ipService.getIpAddress(request)
		def location = ipService.getLocation(ipAddr)
		if(location != null){
			render("Hello World" + location.countryName + "ip address: " + ipAddr)
		}else{
			render("No location " + "ip address: " + ipAddr)
		}
	}

	private LookupService getLookupService(){
		if(lookupService == null){
			try{
			//need to get lookup service initialised from data file
			lookupService = new LookupService(getFileLocation())
			}catch(e){
				log.error(e.message, e)
			}
		}
		lookupService
	}

	private String getFileLocation(){
		if(fileLocation == null){
			StringBuffer sb = new StringBuffer()
			sb.append(grailsAttributes.getApplicationContext().getResource("/data/maxmind/GeoLiteCity.dat").getFile().toString())
			log.info("Using GeoIp database from: " + sb.toString())
			fileLocation = sb.toString()
		}
		fileLocation
	}
}

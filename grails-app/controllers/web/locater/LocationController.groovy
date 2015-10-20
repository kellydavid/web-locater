package web.locater

import org.grails.plugin.geoip.GeoIpService

class LocationController {

	GeoIpService ipService

	def index() { 
		//def ipAddr = ipService.getIpAddress(request)
		def location = ipService.getLocation("8.8.8.8")
		return render("Hello World" + location.countryName)
	}

}

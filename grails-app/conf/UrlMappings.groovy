class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }
        "/" {
    		controller = "location"
    		action = "index"
 		}
        "500"(view:'/error')
	}
}

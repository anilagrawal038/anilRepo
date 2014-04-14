class UrlMappings {

    static mappings = {
        /*"/$controller/$action?/$id?(.$format)?" {
            constraints {
                // apply constraints here
            }
        }*/

        "/$controller/$id?" {
            action = [GET: "show", POST: "save", PUT: "update", DELETE: "remove"]
        }

        /*"/testService/$id?"(service: "testService") {
            action = [GET: "show", PUT: "update", DELETE: "delete", POST: "save"]
        }*/

        "/"(view: "/index")
        "500"(view: '/error')
    }
}

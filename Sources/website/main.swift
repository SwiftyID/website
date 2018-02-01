import Vapor

let config = try Config()
try config.setup()

let drop = try Droplet(config)

drop.get("/") { req in
    return try drop.view.make("home", ["messages": "Hello SwiftyID"])
}

try drop.run()

import Vapor

let drop = try Droplet()

drop.get("/") { req in
  return "Hello SwiftyID"
}

try drop.run()

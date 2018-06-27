import Vapor

final class Routes: RouteCollection {
    let view: ViewRenderer
    init(_ view: ViewRenderer) {
        self.view = view
    }

    func build(_ builder: RouteBuilder) throws {
        /// GET /
        builder.get { req in
            let context: [String : Any] = [
              "hostname": req,
              "title": "Komunitas Bahasa Pemrograman Swift",
              "description": "Kami Komunitas Bahasa Pemrograman Swift berbasis di Jakarta."
            ]
            return try self.view.make("welcome", context)
        }

        /// POST /
//        builder.post("kontak") { req in
//            return JSON(req)
//        }

        /// GET /tentang-kami
        builder.get("tentang-kami") { req in
            let context: [String: Any] = [
                "req": req,
                "title": "Tentang Kami - SwiftyID",
                "description": "Tentang Kami - SwiftyID. Kami Komunitas Bahasa Pemrograman Swift berbasis di Jakarta."
            ]
            return try self.view.make("about-us", context)
        }
        /// GET /acara
        builder.get("acara") { req in
            let context: [String: Any] = [
                "req": req,
                "title": "Acara - SwiftyID",
                "description": "Acara - SwiftyID. Kami Komunitas Bahasa Pemrograman Swift berbasis di Jakarta."
            ]
            return try self.view.make("events", context)
        }
        /// GET /
        builder.get("blog") { req in
            let context: [String: Any] = [
                "req": req,
                "title": "Blog - SwiftyID",
                "description": "Blog - SwiftyID. Kami Komunitas Bahasa Pemrograman Swift berbasis di Jakarta."
            ]
            return try self.view.make("blog", context)
        }
        /// GET /tentang-kami
        builder.get("kontak") { req in
            let context: [String: Any] = [
                "req": req,
                "title": "Kontak Kami - SwiftyID",
                "description": "Kontak Kami - SwiftyID. Kami Komunitas Bahasa Pemrograman Swift berbasis di Jakarta."
            ]
            return try self.view.make("contact", context)
        }
    }
}

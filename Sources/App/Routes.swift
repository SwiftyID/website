import Vapor

final class Routes: RouteCollection {
    let view: ViewRenderer
    init(_ view: ViewRenderer) {
        self.view = view
    }

    func build(_ builder: RouteBuilder) throws {
        /// GET /
        builder.get { req in
            let context = [
              "title": "Komunitas Bahasa Pemrograman Swift",
              "description": "Kami Komunitas Bahasa Pemrograman Swift berbasis di Jakarta."
            ]
            return try self.view.make("welcome", context)
        }

    }
}

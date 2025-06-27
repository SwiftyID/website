import Fluent
import Vapor

func routes(_ app: Application) throws {
    app.get { req async throws in
        try await req.view.render(
            "index", ["title": "Welcome to SwiftyID! - Komunitas Bahasa Pemrograman Swift"])
    }

    app.get("hello") { req async -> String in
        "Hello, world!"
    }

    try app.register(collection: TodoController())
}

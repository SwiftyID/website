import Fluent
import Vapor

func routes(_ app: Application) throws {
    app.get { req in
        return "Hello, Swifty!"
    }

    try app.register(collection: TodoController())
}

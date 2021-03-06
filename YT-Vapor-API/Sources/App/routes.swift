import Fluent
import Vapor

func routes(_ app: Application) throws {
    app.get { req in
        return "It works!"
    }

    app.get("hello") { req -> String in
        return "Hello, world!"
    }
    
//    app.get("hello", "vapor") { req -> String in
//        return "Hello, Vapor!"
//    }
    
    try app.register(collection: SongController())
}

import Foundation

enum DatabaseError: Error {
    // TODO: not yet implemented
}

struct Database {
    let name: String
    let path: String
    let storage: Storage

    func create<T: Model>(_ object: T) -> Result<Void, DatabaseError> {
        fatalError() // TODO: not yet implemented
    }

    func save<T: Model>(_ object: T) -> Result<Void, DatabaseError> {
        fatalError() // TODO: not yet implemented
    }

    func delete<T: Model>(_ object: T) -> Result<Void, DatabaseError> {
        fatalError() // TODO: not yet implemented
    }

    func find<T: Model>(_ query: FindQuery, from table: T.Type) -> Result<T, DatabaseError> {
        fatalError() // TODO: not yet implemented
    }

    func filter<T: Model>(_ query: FilterQuery, from table: T.Type) -> Result<[T], DatabaseError> {
        fatalError() // TODO: not yet implemented
    }
}

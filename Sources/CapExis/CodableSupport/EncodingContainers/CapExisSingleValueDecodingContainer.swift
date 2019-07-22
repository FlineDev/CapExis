import Foundation

struct CapExisSingleValueDecodingContainer: SingleValueDecodingContainer {
    let decoder: CapExisDecoder

    var codingPath: [CodingKey] {
        fatalError() // TODO: not yet implemented
    }

    func decodeNil() -> Bool {
        fatalError() // TODO: not yet implemented
    }

    func decode(_ type: Bool.Type) throws -> Bool {
        fatalError() // TODO: not yet implemented
    }

    func decode(_ type: String.Type) throws -> String {
        fatalError() // TODO: not yet implemented
    }

    func decode(_ type: Double.Type) throws -> Double {
        fatalError() // TODO: not yet implemented
    }

    func decode(_ type: Float.Type) throws -> Float {
        fatalError() // TODO: not yet implemented
    }

    func decode(_ type: Int.Type) throws -> Int {
        fatalError() // TODO: not yet implemented
    }

    func decode(_ type: Int8.Type) throws -> Int8 {
        fatalError() // TODO: not yet implemented
    }

    func decode(_ type: Int16.Type) throws -> Int16 {
        fatalError() // TODO: not yet implemented
    }

    func decode(_ type: Int32.Type) throws -> Int32 {
        fatalError() // TODO: not yet implemented
    }

    func decode(_ type: Int64.Type) throws -> Int64 {
        fatalError() // TODO: not yet implemented
    }

    func decode(_ type: UInt.Type) throws -> UInt {
        fatalError() // TODO: not yet implemented
    }

    func decode(_ type: UInt8.Type) throws -> UInt8 {
        fatalError() // TODO: not yet implemented
    }

    func decode(_ type: UInt16.Type) throws -> UInt16 {
        fatalError() // TODO: not yet implemented
    }

    func decode(_ type: UInt32.Type) throws -> UInt32 {
        fatalError() // TODO: not yet implemented
    }

    func decode(_ type: UInt64.Type) throws -> UInt64 {
        fatalError() // TODO: not yet implemented
    }

    func decode<T>(_ type: T.Type) throws -> T where T : Decodable {
        fatalError() // TODO: not yet implemented
    }
}

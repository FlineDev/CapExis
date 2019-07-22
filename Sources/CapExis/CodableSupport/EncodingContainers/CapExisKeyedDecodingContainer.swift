import Foundation

struct CapExisKeyedDecodingContainer<Key: CodingKey>: KeyedDecodingContainerProtocol {
    let decoder: CapExisDecoder

    var codingPath: [CodingKey] {
        fatalError() // TODO: not yet implemented
    }

    var allKeys: [Key] {
        fatalError() // TODO: not yet implemented
    }

    func contains(_ key: Key) -> Bool {
        fatalError() // TODO: not yet implemented
    }

    func decodeNil(forKey key: Key) throws -> Bool {
        fatalError() // TODO: not yet implemented
    }

    func decode(_ type: Bool.Type, forKey key: Key) throws -> Bool {
        fatalError() // TODO: not yet implemented
    }

    func decode(_ type: String.Type, forKey key: Key) throws -> String {
        fatalError() // TODO: not yet implemented
    }

    func decode(_ type: Double.Type, forKey key: Key) throws -> Double {
        fatalError() // TODO: not yet implemented
    }

    func decode(_ type: Float.Type, forKey key: Key) throws -> Float {
        fatalError() // TODO: not yet implemented
    }

    func decode(_ type: Int.Type, forKey key: Key) throws -> Int {
        fatalError() // TODO: not yet implemented
    }

    func decode(_ type: Int8.Type, forKey key: Key) throws -> Int8 {
        fatalError() // TODO: not yet implemented
    }

    func decode(_ type: Int16.Type, forKey key: Key) throws -> Int16 {
        fatalError() // TODO: not yet implemented
    }

    func decode(_ type: Int32.Type, forKey key: Key) throws -> Int32 {
        fatalError() // TODO: not yet implemented
    }

    func decode(_ type: Int64.Type, forKey key: Key) throws -> Int64 {
        fatalError() // TODO: not yet implemented
    }

    func decode(_ type: UInt.Type, forKey key: Key) throws -> UInt {
        fatalError() // TODO: not yet implemented
    }

    func decode(_ type: UInt8.Type, forKey key: Key) throws -> UInt8 {
        fatalError() // TODO: not yet implemented
    }

    func decode(_ type: UInt16.Type, forKey key: Key) throws -> UInt16 {
        fatalError() // TODO: not yet implemented
    }

    func decode(_ type: UInt32.Type, forKey key: Key) throws -> UInt32 {
        fatalError() // TODO: not yet implemented
    }

    func decode(_ type: UInt64.Type, forKey key: Key) throws -> UInt64 {
        fatalError() // TODO: not yet implemented
    }

    func decode<T>(_ type: T.Type, forKey key: Key) throws -> T where T : Decodable {
        fatalError() // TODO: not yet implemented
    }

    func nestedContainer<NestedKey>(keyedBy type: NestedKey.Type, forKey key: Key) throws -> KeyedDecodingContainer<NestedKey> where NestedKey : CodingKey {
        fatalError() // TODO: not yet implemented
    }

    func nestedUnkeyedContainer(forKey key: Key) throws -> UnkeyedDecodingContainer {
        fatalError() // TODO: not yet implemented
    }

    func superDecoder() throws -> Decoder {
        fatalError() // TODO: not yet implemented
    }

    func superDecoder(forKey key: Key) throws -> Decoder {
        fatalError() // TODO: not yet implemented
    }
}
